set terminal pdfcairo enhanced dashed size 8, 4;

set output "scatter-plot.pdf"

set title "Title"

set xlabel "x"
set xrange [145:200]
set xtics 5

set ylabel "y"
set yrange [20:140]
set ytics 10

set datafile separator " "

set style line 1 lt rgb "#9E77A1" lw 2
set style line 2 lt rgb "#8AA9C0" lw 2

set grid

plot 'data1.txt' using 1:2 with points linestyle 1 title 'T1', \
    'data2.txt' using 1:2 with points linestyle 2 title 'T2', \