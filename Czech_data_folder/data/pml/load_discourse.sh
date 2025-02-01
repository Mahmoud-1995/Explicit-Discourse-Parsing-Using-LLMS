#!/bin/bash

DATA="."
BTRED="btred"

load_in_dir () {
  DIR=$1
  echo "Processing directory $1 (takes several minutes)"
  ${BTRED} -I ./bin/delete_discourse.btred ${DATA}/${DIR}/*.t.gz  >bin/load_discourse_${DIR}.log 2>&1
  ${BTRED} -I ./bin/load_discourse.btred ${DATA}/${DIR}/*.t.gz  -o "./bin/_extracted_PDiT30.tsv" --  >>bin/load_discourse_${DIR}.log 2>&1
}


echo "Going to replace discourse annotation in directories train-1 ... train-8, dtest and etest."

load_in_dir train-1
load_in_dir train-2
load_in_dir train-3
load_in_dir train-4
load_in_dir train-5
load_in_dir train-6
load_in_dir train-7
load_in_dir train-8
load_in_dir dtest
load_in_dir etest

echo "Done! You may check log files in directory bin to make sure there have been no errors."