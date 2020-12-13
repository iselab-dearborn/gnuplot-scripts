set terminal pdfcairo enhanced dashed size 8, 4;

set output "stacked-percentage-column.pdf"

set title "Title"

# Where to put the legend
# and what it should contain
set key invert reverse Left outside
set key autotitle columnheader

set style data histograms
set style histogram rowstacked
set style fill solid
set boxwidth 0.9

set yrange [0:100]
set ytics 10
set ylabel "Y label"

set datafile separator " "

set grid

plot "data.txt" using (100*$2/($2+$3+$4)):xtic(1) title "Alg1" linecolor rgb "#9E77A1" \
    ,'' using (100*$3/($2+$3+$4)) title "Alg2" linecolor rgb "#9A8FBB" \
    ,'' using (100*$4/($2+$3+$4)) title "Alg3" linecolor rgb "#8AA9C0"