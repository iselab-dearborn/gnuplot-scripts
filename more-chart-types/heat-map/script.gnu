set terminal pdfcairo enhanced size 8in, 4in
set output "heat-map.pdf"

# General Settings

#set title "Title"
set datafile separator ";"
# unset border
set grid
# Margins

set lmargin 0;
set rmargin 0;
set tmargin 0;
set bmargin 0;

# Legend

set key top left
unset key

# Default Colors

COLOR_1="#9E77A1"
COLOR_2="#9A8FBB"
COLOR_3="#8AA9C0"
COLOR_4="#7BC1BF"
COLOR_5="#7ED9B1"
COLOR_6="#B2ED90"
COLOR_7="#FDF57A"

# Chart Type

# set tic scale 0

# Color runs from white to green
# set palette rgbformula -7, 2, -7
set palette defined (0 "white", 5 COLOR_1)
# set cbrange [0:5]
set cblabel "Score"
set cbtics scale 1

set xrange [-1:5]
set yrange [-1:5]

set view map
splot "data.txt" matrix rowheaders columnheaders using 1:2:3 with image
