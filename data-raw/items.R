library(googlesheets4)
library(readr)

# Stardew Items Data -----------------------------

# deauthorize token, because sheet is public
googlesheets4::gs4_deauth()

# grab google sheets table of items 
items <- googlesheets4::read_sheet(
  "https://docs.google.com/spreadsheets/d/1EvO6IjpcGvFHQSKBzuxQukweTs5beMO_EROch3jM43M/edit?usp=sharing",
  sheet = "items")

# clean (if need) ...

# save as csv
readr::write_csv(
  items, 
  file = "data-raw/items.csv")
# save items into data folder as .RDS file
usethis::use_data(
  items, 
  overwrite = TRUE)
