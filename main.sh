#!/bin/bash

echo "Hello! bash code kata."

source config_file
PHASE=$1
if [ -z $PHASE ] # null check
then
    PHASE="test"
fi

echo "[main]: $PHASE"
echo "[main]: $CONF"

fn_print_conf

echo "Bye Bye ~  The End."
