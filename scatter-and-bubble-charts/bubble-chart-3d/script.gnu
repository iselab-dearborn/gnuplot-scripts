set terminal pdfcairo enhanced dashed size 8, 4;

set output "bubble-chart-3d.pdf"

set title "Title"

unset key

set xrange [-5:5]
set yrange [0:5]

set xtics ("Red" 1,"White" 2,"Green" 3,"Blue" 4,"Gold" -1,"Silver" -2,"Iron" -3,"Titanium" -4)
set ytics ("Circle" 1,"Triangle" 2,"Ellipse" 3,"Rectangle" 4)

set bmargin 2

set yzeroaxis 
set ytics axis 
set ytics center

SCALE = 0.06

set xtics rotate by 0 offset 0,0

set datafile separator " "
set grid
set tics scale 0

set multiplot layout 1,1

plot 'data1.txt' using 1:2:($3*SCALE) with circles lt rgb '#9E77A1' fs solid border rgb 'black' fs transparent solid 0.4, \
      '' using 1:2:(sprintf("%d", $3)) with labels notitle, \
      'data2.txt' using 1:2:($3*SCALE) with circles lt rgb "#8AA9C0" fs solid border rgb "black" fs transparent solid 0.4, \
      '' using 1:2:(sprintf("%d", $3)) with labels notitle