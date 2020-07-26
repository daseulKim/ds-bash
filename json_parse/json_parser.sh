#!/bin/bash
# source common_functions # todo
echo "[log] start! parse json"

INPUT_FORMAT=$1
TARGET=$2

source jq_functions

echo "[log] input_format: $INPUT_FORMAT,  target: $TARGET"

if [ -z $INPUT_FORMAT ] || [ -z $TARGET ]
then 
    echo "[error] you must input 2 parameters. \n'1':format(file|curl), '2':target "
    exit 0
fi

if [ $INPUT_FORMAT == 'file' ]
then 
    fn_jq_parse_file
elif [ $INPUT_FORMAT == 'curl' ]
then
    fn_jq_parse_curl
fi

echo "[log] the end"
