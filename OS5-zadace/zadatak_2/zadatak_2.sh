#!/bin/bash

old_dir="/home/student/old_dir"
new_dir="/home/student/new_dir"

for datoteka in "$old_dir"/*; do
    mv "$datoteka" "$new_dir"
    echo "Datoteka prebačena"
    sleep 1
done