#!/bin/sh

# PNG Optimizer
# Download pngcrush from https://pmt.sourceforge.io/pngcrush/

for png in `find $1 -iname "*.png"`; do
    echo "crushing $png ..."
    pngcrush -rem alla -reduce -brute "$png" temp.png

    # preserve original on error
    if [ $? = 0 ]; then
        mv -f temp.png $png
    else
        rm temp.png
    fi
done