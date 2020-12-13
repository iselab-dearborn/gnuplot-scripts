set terminal pdfcairo enhanced dashed size 4, 8;

set output "basic-bar.pdf"

unset key

set style data histogram
set style histogram cluster gap 1
set style fill solid
set boxwidth 0.9

set ylabel "Title"
 
set yrange [0: 0.4]; 
set y2range [0: 0.4];
set y2label rotate "Y Values"
set y2tics 0.05 rotate scale 0
set xtics nomirror rotate scale 0

COLOR_2="#9E77A1"
COLOR_3="#9A8FBB"
COLOR_4="#8AA9C0"

set label 2 'alg1' at graph 0.05, 0.85 point lt rgb COLOR_2 pt 1 ps 1 left rotate by 90
set label 3 'alg2' at graph 0.10, 0.85 point lt rgb COLOR_3  pt 1 ps 1 left rotate by 90
set label 4 'alg4' at graph 0.15, 0.85 point lt rgb COLOR_4  pt 1 ps 1 left rotate by 90

set datafile separator " "

set format y ""
set grid

set bmargin 6

plot "data.txt" using 2:xtic(1) title "Alg1" linecolor rgb COLOR_2, \
    "" using 3 title "Alg2" linecolor rgb COLOR_3, \
    "" using 4 title "Alg3" linecolor rgb COLOR_4, \
            
            