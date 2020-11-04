# Resizes and compresses large images to jpeg format
# Usage
# smartresize "*.jpg" 1200 outputdir
# smartresize inputfile.png 300 outputdir
# Taken from https://www.smashingmagazine.com/2015/06/efficient-image-resizing-with-imagemagick/
smartresize() {
	mogrify -path $3 -filter Triangle -define filter:support=2 -resize $2x$2\> -unsharp 0.25x0.25+8+0.065 -dither None -posterize 136 -quality 70 -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB -strip -format jpg $1
}
