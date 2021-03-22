set terminal pdfcairo enhanced size 8in, 4in
set output "bubble-chart.pdf"

# General Settings

set title "Title"
set datafile separator " "
set grid
unset key

# Margins

set lmargin 9
set rmargin 1
set tmargin 2
set bmargin 2

# Default Colors

COLOR_1="#9E77A1"
COLOR_2="#9A8FBB"
COLOR_3="#8AA9C0"
COLOR_4="#7BC1BF"
COLOR_5="#7ED9B1"
COLOR_6="#B2ED90"
COLOR_7="#FDF57A"

set xrange [0:5]
set yrange [0:5]

set xtics ( \
      "Red" 1, \
      "White" 2, \
      "Green" 3, \
      "Blue" 4 \
)
set ytics ( \
      "Circle" 1, \
      "Triangle" 2, \
      "Ellipse" 3, \
      "Rectangle" 4 \
)

BUBBLE_SCALE = 0.05

set xtics rotate by 0 offset 0,0

circleColor = COLOR_1
textColor = 'black'

set tics scale 0

plot 'data.txt' using 1:2:($3*BUBBLE_SCALE) with circles lt rgb circleColor fs solid border rgb circleColor fs transparent solid 0.4, \
      '' using 1:2:(sprintf("%d", $3)) with labels notitle