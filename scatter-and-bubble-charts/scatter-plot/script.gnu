set terminal pdfcairo enhanced size 8in, 4in
set output "scatter-plot.pdf"

# General Settings

set title "Title"
set datafile separator " "
set grid

# Default Colors

COLOR_1="#9E77A1"
COLOR_2="#9A8FBB"
COLOR_3="#8AA9C0"
COLOR_4="#7BC1BF"
COLOR_5="#7ED9B1"
COLOR_6="#B2ED90"
COLOR_7="#FDF57A"

set xlabel "x"
set xrange [145:200]
set xtics 5

set ylabel "y"
set yrange [20:140]
set ytics 10

set style line 1 lt rgb COLOR_1 lw 2
set style line 2 lt rgb COLOR_3 lw 2
set style line 3 lt rgb COLOR_5 lw 2

plot 'data1.txt' using 1:2 with points linestyle 1 title 'T1', \
    'data2.txt' using 1:2 with points linestyle 2 title 'T2', \
    'data3.txt' using 1:2 with points linestyle 3 title 'T3', \