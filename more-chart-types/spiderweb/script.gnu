set terminal pdfcairo enhanced dashed size 8, 4;
set output "spiderweb.pdf"

#set title "Title"

set key top left

set spiderplot
set style spiderplot linewidth 3.000 dashtype solid pointtype 1 pointsize default
set style spiderplot fillstyle transparent solid 0.2 border
set size ratio 1 1,1
set style data spiderplot

unset xtics
unset ytics
unset ztics
unset cbtics
unset rtics

unset paxis 1 tics
unset paxis 2 tics
unset paxis 3 tics
unset paxis 4 tics
unset paxis 5 tics

set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback

set paxis 1 range [ 0 : 10 ]  noextend
set paxis 1 label "metric1" 
set paxis 1 label  textcolor lt -1 norotate 

set paxis 2 range [ 0 : 10 ]  noextend
set paxis 2 label "metric2" 
set paxis 2 label textcolor lt -1 norotate

set paxis 3 range [ -1 : 1 ]  noextend
set paxis 3 label "metric3" 
set paxis 3 label textcolor lt -1 norotate

set paxis 4 range [ 0 : 10 ]  noextend
set paxis 4 label "metric4" 
set paxis 4 label textcolor lt -1 norotate

set paxis 5 range [ 0 : 20 ]  noextend
set paxis 5 label "metric5" 
set paxis 5 label textcolor lt -1 norotate

set lmargin 6;
set rmargin 6;
set tmargin 3;
set bmargin 0;

set for [i=1:5] paxis i tics font ',9'

set datafile separator " "

set grid spider linetype black linecolor "grey" linewidth 0.5 back

COLOR_1="#9E77A1"
COLOR_2="#9A8FBB"
COLOR_3="#8AA9C0"
COLOR_4="#7BC1BF"
COLOR_5="#7ED9B1"
COLOR_6="#B2ED90"
COLOR_7="#FDF57A"

plot  for [i=1:5] "data.txt" using i title columnhead, \
    keyentry with spiderplot linecolor rgb COLOR_1 linewidth 1 title "Alg1", \
    keyentry with spiderplot linecolor rgb COLOR_2 linewidth 1 title "Alg2", \
    keyentry with spiderplot linecolor rgb COLOR_3 linewidth 1 title "Alg3", \
    keyentry with spiderplot linecolor rgb COLOR_4 linewidth 1 title "Alg4", \

# Generate automatically the same figure in .png format 
# 8in == 768px and 4in == 384px

set terminal png notransparent size 768, 384
set output "spiderweb.png"

replot