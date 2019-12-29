## code to prepare `theoffice` dataset goes here

# Note: run the file python/get_transcript.py to produce the office_transcript.csv data

raw <- read.csv("python/office_transcript.csv", header = F)

mylist <- list(raw)
stacked <- unlist(mylist, use.names = F)

final <- tibble::tibble(index = seq_along(stacked), text = stacked)

directors_writers <- read.csv("data-raw/office_directors_writers.csv",
                              colClasses = "character") %>%
  select(-staff_writer)

theoffice <- final %>%
  tidyr::separate(text, c("ep", "txt"), sep = ";") %>%
  tidyr::drop_na() %>%
  dplyr::mutate(character = stringi::stri_extract_first_words(txt)) %>%
  dplyr::rowwise() %>%
  dplyr::mutate(text = stringr::str_split(txt, ":")[[1]][2]) %>%
  dplyr::select(-txt) %>%
  dplyr::mutate(season = stringi::stri_sub(ep, 1, 2)) %>%
  dplyr::mutate(episode = stringi::stri_sub(ep, 4, 5)) %>%
  dplyr::mutate(episode_name = stringr::str_split(ep, "-")[[1]][2]) %>%
  dplyr::mutate(episode_name = sub("^ +","",episode_name)) %>%
  dplyr::select(-ep) %>%
  dplyr::rename(text_w_direction = text) %>%
  dplyr::mutate(text_w_direction = sub("^ +","",text_w_direction)) %>%
  # dplyr::mutate(text = sub("\\[.*] ", "", text_w_direction)) %>%
  dplyr::mutate(text = gsub(" *\\[.*?\\] *","",as.character(text_w_direction))) %>%
  dplyr::mutate(text = sub("^ +","",text)) %>%
  dplyr::select(index, season, episode, episode_name, character, text, text_w_direction) %>%
  dplyr::filter(!stringi::stri_detect(str = episode_name, regex = "Webisode")) %>%
  dplyr::filter(!stringi::stri_detect(str = episode_name, regex = "Deleted")) %>%
  dplyr::filter(!stringi::stri_detect(str = episode_name, regex = "Gag Reel")) %>%
  tidyr::drop_na() %>%
  dplyr::left_join(directors_writers, by = c("season","episode")) %>%
  dplyr::arrange(season, episode) %>%
  dplyr::mutate(index = 1:n()) %>%
  ## Looks like E-Mail Surveilance was cut down to E due to the hyphen
  dplyr::mutate(episode_name = ifelse(season == "02" & episode == "09",
                                      "E-Mail Surveilance",
                                      episode_name)) %>%
  select(index,season,episode,
         director,writer,
         character,text,text_w_direction)


usethis::use_data(theoffice, overwrite = TRUE)

