#!/bin/sh

# Gif Optimizer
# Download gifsicle from https://www.lcdf.org/gifsicle/

for gif in `find $1 -iname "*.gif"`; do
    echo "crushing $gif ..."
    gifsicle -O3 "$gif" -o temp.gif

    # preserve original on error
    if [ $? = 0 ]; then
        mv -f temp.gif $gif
    else
        rm temp.gif
    fi
done