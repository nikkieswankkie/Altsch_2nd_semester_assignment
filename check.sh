#!/bin/bash

file=$1

if [ -e "$file" ]; then
    echo "File '$file' exists."
else
    echo "File '$file' does not exist."
fi