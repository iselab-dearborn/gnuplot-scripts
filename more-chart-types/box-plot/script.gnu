set terminal pdfcairo enhanced dashed size 8, 4;

set output "box-plot.pdf"

set title "Title"

set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set boxwidth  0.5
set pointsize 0.5

unset key
set border 2
set xtics ("Alg1" 1, "Alg2" 2, "Alg3" 3) scale 0.0
set ytics 0.2
set ylabel "Y Label"
set yrange [-1.6:1.6]

set datafile separator " "
set grid

COLOR_2="#9E77A1"
COLOR_3="#9A8FBB"
COLOR_4="#8AA9C0"

plot 'data.txt' using (1):1 title 'T1' linecolor rgb COLOR_2, \
    '' using (2):2 title 'T2' linecolor rgb COLOR_3, \
    '' using (3):3 title 'T3' linecolor rgb COLOR_4, \