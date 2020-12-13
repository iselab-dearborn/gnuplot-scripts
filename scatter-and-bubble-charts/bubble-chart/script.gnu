set terminal pdfcairo enhanced dashed size 8, 4;

set output "bubble-chart.pdf"

set title "Title"

unset key

set xrange [0:5]
set yrange [0:5]

set xtics ("Red" 1, "White" 2,"Green" 3, "Blue" 4)
set ytics ("Circle" 1, "Triangle" 2, "Ellipse" 3, "Rectangle" 4)

set bmargin 2

SCALE = 0.05

set xtics rotate by 0 offset 0,0

circleColor = '#9E77A1'
textColor = 'black'

set datafile separator " "
set grid
set tics scale 0

set multiplot layout 1,1

plot 'data.txt' using 1:2:($3*SCALE) with circles lt rgb circleColor fs solid border rgb circleColor fs transparent solid 0.4, \
      '' using 1:2:(sprintf("%d", $3)) with labels notitle
        