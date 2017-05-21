#!/bin/bash 
ls -R \
      --ignore=*.xml \
      --ignore=*.sh  \
      --ignore=*.git \
      --ignore=*.txt \
      --ignore=*.md  \
      --ignore=*.qs  \
      --ignore=*.png > "Additional-required-files.txt"
