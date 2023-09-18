#!/usr/bin/env bash

mkdir -p data/temp

tar Oxvzf data/ghcnd_all.tar.gz | grep "PRCP" | split l-1000000 --filter 'gzip > data/temp/$FILE.gz'
