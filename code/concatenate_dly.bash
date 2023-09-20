#!/usr/bin/env bash

mkdir -p data/temp

tar Oxvzf data/ghcnd_all.tar.gz | grep "PRCP" | split -l 500000 | gzip

for f in x*;do mv $f $f.gz;done

mv x* data/temp/

code/read_split_dly_files.R

rm -rf data/temp