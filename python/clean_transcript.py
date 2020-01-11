FILEDIR = # fill in the directory
TRANSCRIPT = FILEDIR + "office_transcript.csv"
WRITERS = FILEDIR + "office_directors_writers.csv"
COMBINED = FILEDIR + "office_combined.csv" # generated


import re
import csv


## Dialogue


# Separate bw - season, ep, ep_title, character, text.
# Text can have colons so we gotta split at the first one.
BREAK_PATTERN = re.compile(r"(..)x(.+) -(.+);([^:]+): (.+)")

# Text often has transcribed direction and expressions.
# Separate it out into another column.
FILTER_DIRECTION = re.compile(r"\[[^\]]+\]")

def break_line(line):
    match = re.match(BREAK_PATTERN, line)
    if match:
        season, ep, title, char, text = match.groups()
        return (
            int(season), 
            int(ep.split('/')[0]), # get only 3 out of 03/04
            title.strip(), 
            char.strip(), 
            re.sub(FILTER_DIRECTION, '', text).strip(), # text wo direction
            text.strip(), # text with direction
            "; ".join(
                [s.strip('[]') for s in re.findall(FILTER_DIRECTION, text)]
            ), # directions
        )

all_lines = []
remove_extras = set(['Gag Reel', 'Deleted', 'Webisode'])

with open(TRANSCRIPT, 'r') as f:
    for i,lines in enumerate(f):
        reader = csv.reader([lines], delimiter=',')
        tidy_lines = [
            break_line(l) for l in next(reader) 
            if not any(substr in l for substr in remove_extras)
        ]
        all_lines.extend([l for l in tidy_lines if l])


## Writers

cols = ('season', 'episode', 'director', 'writer')
with open(WRITERS, 'r') as f:
    reader = csv.reader(f, delimiter=',')
    next(reader)
    all_writers = [
        (int(l[0]), int(l[1]), l[2], f"{l[3]};{l[4]}".strip(';')) for l in reader
    ]


    
## Join and put together in a csv

import pandas as pd

transcript_df = pd.DataFrame(
    all_lines, 
    columns = ['season', 'episode', 'title', 'character', 'text', 'text_w_directions', 'directions']
)

writers_df = pd.DataFrame(
    all_writers, 
    columns = ['season', 'episode', 'director', 'writers']
)

df = pd.merge(writers_df, transcript_df, on = ('season', 'episode'))
df.to_csv(COMBINED, index=False)
