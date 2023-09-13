#!/bin/bash

shopt -s extglob
this=$(basename "$0")
find . -mindepth 1 -maxdepth 1 ! -name "$this" -exec rm -rf {} \;
yes '' | poetry init
printf "\n\n=== RESULTS: ===\n\n"
ls
