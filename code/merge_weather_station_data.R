#!/usr/bin/env Rscript

library(tidyverse)

prcp_data <- read_tsv("data/ghcnd_tidy.tsv.gz")

station_data <- read_tsv("data/ghcnd_regions_years.tsv")

lat_long_prcp <- inner_join(prcp_data, station_data, by = join_by(id)) %>%
    filter(year != first_year & year != last_year) %>%
    group_by(latitude, longitude, year) %>%
    summarize(mean_prcp = mean(prcp))
