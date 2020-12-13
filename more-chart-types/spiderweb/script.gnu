# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'spiderplot.3.png'
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
set paxis 1 label  font ',12' textcolor lt -1 norotate 

set paxis 2 range [ 0 : 10 ]  noextend
set paxis 2 label "metric2" 
set paxis 2 label  font ',12' textcolor lt -1 norotate

set paxis 3 range [ -1 : 1 ]  noextend
set paxis 3 label "metric3" 
set paxis 3 label  font ',12' textcolor lt -1 norotate

set paxis 4 range [ 0 : 10 ]  noextend
set paxis 4 label "metric4" 
set paxis 4 label  font ',12' textcolor lt -1 norotate

set paxis 5 range [ 0 : 10 ]  noextend
set paxis 5 label "metric5" 
set paxis 5 label  font ',12' textcolor lt -1 norotate

set lmargin 6;
set rmargin 6;
set tmargin 3;
set bmargin 0;

set for [i=1:5] paxis i tics font ',9'

set datafile separator " "

set grid spider lt black lc "grey" lw 0.5 back

plot  for [i=1:5] "data.txt" using i title columnhead lw 1, \
    keyentry with spiderplot lc 1 lw 1 title "Alg1", \
    keyentry with spiderplot lc 2 lw 1 title "Alg2", \
    keyentry with spiderplot lc 3 lw 1 title "Alg3", \
    keyentry with spiderplot lc 4 lw 1 title "Alg4", \