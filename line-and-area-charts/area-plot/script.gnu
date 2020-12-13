set terminal pdfcairo enhanced dashed size 8, 4;

set output "area-plot.pdf"

set title "Title"

set xdata time
set timefmt "%Y-%m-%d"
set xlabel "x"
set xrange ["2013-09-01":"2013-09-07"]
set xtics out
set tics front

set ylabel "y"
set yrange [0:10<*]
set ytics 5

set datafile separator " "

set style line 1 lt rgb "#9E77A1" lw 2
set style line 2 lt rgb "#9A8FBB" lw 2
set style line 3 lt rgb "#7BC1BF" lw 2
set style line 4 lt rgb "#7ED9B1" lw 2
set style line 5 lt rgb "#FDF57A" lw 2

set grid

plot 'data.txt' using 1:($2+$3+$4+$5+$6)  w filledcurves x1 linestyle 1 fs transparent solid 0.4 title 'T1', \
    '' using 1:($3+$4+$5+$6) w filledcurves x1 linestyle 2 fs transparent solid 0.4 title 'T2', \
    '' using 1:($4+$5+$6) w filledcurves x1 linestyle 3 fs transparent solid 0.4 title 'T3', \
    '' using 1:($5+$6) w filledcurves x1 linestyle 4 fs transparent solid 0.4 title 'T4', \
    '' using 1:($6) w filledcurves x1 linestyle 5 fs transparent solid 0.4 title 'T5'
