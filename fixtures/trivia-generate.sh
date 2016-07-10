#!/bin/bash

cd "$(dirname ${BASH_SOURCE[0]})"

for i in $(seq -f '%03g' 1 100); do
    echo "$i"
    echo "$i" > "trivia/$i.args"
    ./trivia.sh "$i" > "trivia/$i.out"
done
