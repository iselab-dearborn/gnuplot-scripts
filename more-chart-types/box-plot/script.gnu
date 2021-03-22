set terminal pdfcairo enhanced size 8in, 4in
set output "box-plot.pdf"

# General Settings

set title "Title"
set datafile separator " "
set grid
unset border

# Margins

set lmargin 8
set rmargin 2
set tmargin 2
set bmargin 2

# Legend

unset key

# Chart Type

set style fill solid 0.5 border -1
set style boxplot outliers pointtype 7
set style data boxplot
set boxwidth  0.5
set pointsize 0.5

set xtics scale 0.0
set xtics ( \
    "Alg1" 1, \
    "Alg2" 2, \
    "Alg3" 3, \
    "Alg4" 4, \
    "Alg5" 5, \
    "Alg6" 6, \
    "Alg7" 7, \
) 

set ylabel "Y Label"
set ytics 0.1
set yrange [0:1]

COLOR_1="#9E77A1"
COLOR_2="#9A8FBB"
COLOR_3="#8AA9C0"
COLOR_4="#7BC1BF"
COLOR_5="#7ED9B1"
COLOR_6="#B2ED90"
COLOR_7="#FDF57A"

plot 'data.txt' using (1):1 title 'T1' linecolor rgb COLOR_1, \
    '' using (2):2 title 'T2' linecolor rgb COLOR_2, \
    '' using (3):3 title 'T3' linecolor rgb COLOR_3, \
    '' using (4):4 title 'T4' linecolor rgb COLOR_4, \
    '' using (5):5 title 'T5' linecolor rgb COLOR_5, \
    '' using (6):6 title 'T6' linecolor rgb COLOR_6, \
    '' using (7):7 title 'T7' linecolor rgb COLOR_7, \