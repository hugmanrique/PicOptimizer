## PicOptimizer
Collection of Shell scripts used to optimize all the images in a directory automatically.

### Dependencies
PNG optimization uses [pngcrusher's convert CLI](https://pmt.sourceforge.io/pngcrush/).

GIF optimization uses [gifsicle's CLI](https://www.lcdf.org/gifsicle/).

Both libraries are available for Linux, Mac OS X and Windows. On Windows you may need to add the files to your PATH.

### Usage
1. Move the scripts into a folder
2. Use ```./pngoptimize.sh``` to run the PNG optimizer
3. Use ```./gifoptimize.sh``` to run the GIF optimizer
4. That's it!