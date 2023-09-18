#!/usr/bin/env bash

# get all of the daily data from all weather stations and generate list of
# stations
code/get_ghcnd_data.bash ghcnd_all.tar.gz
code/get_ghcnd_all_files.bash

# get list of type of data find at each weather station
code/get_ghcnd_data.bash ghcnd-inventory.txt

# get metadata for each weather station
code/get_ghcnd_data.bash ghcnd-stations.txt