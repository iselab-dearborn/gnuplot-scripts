set terminal pdfcairo enhanced dashed size 8, 4;

set output "basic-line.pdf"

set title "Title"

set xlabel "x"
set xrange [0:10]
set xtics 1

set ylabel "y"
set yrange [-1:1]
set ytics 0.1

set datafile separator " "

set style line 1 lt rgb "#9E77A1" lw 2
set style line 2 lt rgb "#8AA9C0" lw 2
set style line 3 lc rgb "#7ED9B1" lt 1 lw 2 pt 7 pi -1 ps 0.5

set grid

plot 'data.txt' using 1:2 with lines linestyle 1 title 'T1', \
    '' using 1:3 with linespoints linestyle 2 title 'T2', \
    '' using 1:4 with linespoints linestyle 3 title 'T3'
