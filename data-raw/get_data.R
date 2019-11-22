## code to prepare `theoffice` dataset goes here

# Note: run the file python/get_transcript.py to produce the office_transcript.csv data

raw <- read.csv("python/office_transcript.csv", header = F)

mylist <- list(raw)
stacked <- unlist(mylist, use.names = F)

final <- tibble(index = seq_along(stacked), text = stacked)


theoffice <- final %>%
  tidyr::separate(text, c("ep", "txt"), sep = ";") %>%
  tidyr::drop_na() %>%
  dplyr::mutate(actor = stringi::stri_extract_first_words(txt)) %>%
  dplyr::rowwise() %>%
  dplyr::mutate(text = stringr::str_split(txt, ":")[[1]][2]) %>%
  dplyr::select(-txt) %>%
  dplyr::mutate(episode = stringi::stri_sub(ep, 1, 2)) %>%
  dplyr::mutate(season = stringi::stri_sub(ep, 4, 5)) %>%
  dplyr::mutate(episode_name = stringr::str_split(ep, "-")[[1]][2]) %>%
  dplyr::select(-ep) %>%
  dplyr::rename(text_w_direction = text) %>%
  dplyr::mutate(text = sub("\\[.*] ", "", text_w_direction)) %>%
  dplyr::select(index, season, episode, episode_name, actor, text, text_w_direction) %>%
  tidyr::drop_na()


usethis::use_data(theoffice)

