library(readr)

data <- readr::read_csv("成立災害應變中心一覽表_export.csv")

glimpse("data")

data <- data |>
  dplyr::mutate(
    western_year = as.numeric(year) + 1911
  )

data <- data |>
  dplyr::mutate(
    project_name = dplyr::case_when(
      project_name == "小犬颱風" ~ "Little Dog Typhoon",
      project_name == "0906強化三級" ~ "Typhoon 0906",
      project_name == "海葵颱風" ~ "Haikui Typhoon",
      project_name == "0820強化三級" ~ "Typhoon 0820",
      project_name == "0819強化三級" ~ "Typhoon 0819",
      project_name == "0817強化三級" ~ "Typhoon 0817",
      project_name == "0811強化三級" ~ "Typhoon 0811",
      project_name == "0810強化三級" ~ "Typhoon 0810",
      project_name == "卡努颱風" ~ "Kanun Typhoon",
      project_name == "0730強化三級" ~ "Typhoon 0730",
      project_name == "杜蘇芮颱風" ~ "Doksuri Typhoon",
      project_name == "0630強化三級" ~ "Typhoon 0630",
      project_name == "0624強化三級" ~ "Typhoon 0624",
      project_name == "0623強化三級" ~ "Typhoon 0623",
      project_name == "0616強化三級" ~ "Typhoon 0616",
      project_name == "1111016強化三級" ~ "Typhoon 1016 (2022)",
      project_name == "梅花颱風" ~ "Plum Blossom Typhoon",
      project_name == "軒嵐諾颱風" ~ "Hinnamnor Typhoon",
      project_name == "1110825強化三級" ~ "Typhoon 0825 (2022)",
      project_name == "1110802強化三級" ~ "Typhoon 0802 (2022)",
      project_name == "1110705強化三級" ~ "Typhoon 0705 (2022)",
      project_name == "1110704強化三級" ~ "Typhoon 0704 (2022)",
      project_name == "1110624強化三級" ~ "Typhoon 0624 (2022)",
      project_name == "1110525強化三級" ~ "Typhoon 0525 (2022)",
      project_name == "1110513強化三級" ~ "Typhoon 0513 (2022)",
      project_name == "0303停電" ~ "March 3 Power Outage",
      project_name == "璨樹颱風" ~ "Chanthu Typhoon",
      project_name == "0820大雨" ~ "Heavy Rain 0820",
      project_name == "0730大雨" ~ "Heavy Rain 0730",
      project_name == "0729大雨" ~ "Heavy Rain 0729",
      TRUE ~ project_name



