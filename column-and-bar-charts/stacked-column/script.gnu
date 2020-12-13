set terminal pdfcairo enhanced dashed size 8, 4;

set output "stacked-column.pdf"

set title "Title"

set style data histograms
set style histogram rowstacked
set style fill solid
set boxwidth 0.9

set yrange [0:42]
set ytics 2
set ylabel "Y label"

set datafile separator " "

set grid

plot "data.txt" using 2:xtic(1) title "Alg1" linecolor rgb "#9E77A1", \
            '' using 3 title "Alg2" linecolor rgb "#9A8FBB", \
            '' using 4 title "Alg3" linecolor rgb "#8AA9C0", \
            '' using 5 title "Alg4" linecolor rgb "#7BC1BF"