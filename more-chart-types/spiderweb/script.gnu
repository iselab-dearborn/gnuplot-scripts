set terminal pdfcairo enhanced size 8in, 4in
set output "spiderweb.pdf"

# General Settings

#set title "Title"
set datafile separator " "
unset border

# Margins

set lmargin 0;
set rmargin 0;
set tmargin 2;
set bmargin 0;

# Legend

set key top left

# Default Colors

COLOR_1="#9E77A1"
COLOR_2="#9A8FBB"
COLOR_3="#8AA9C0"
COLOR_4="#7BC1BF"
COLOR_5="#7ED9B1"
COLOR_6="#B2ED90"
COLOR_7="#FDF57A"

# Chart Type

set spiderplot
set style spiderplot fillstyle transparent solid 0.3 border linewidth 1 pointtype 6 pointsize 1.2
set grid spider linetype -1 linecolor "grey" lw 1

set paxis 1 range [ 0 : 10 ]  noextend
set paxis 1 label "metric1" 

set paxis 2 range [ 0 : 10 ]  noextend
set paxis 2 label "metric2" 

set paxis 3 range [ -1 : 1 ]  noextend
set paxis 3 label "metric3" 

set paxis 4 range [ 0 : 10 ]  noextend
set paxis 4 label "metric4" 

set paxis 5 range [ 0 : 20 ]  noextend
set paxis 5 label "metric5" 

set for [i=1:5] paxis i tics 

plot  for [i=1:5] "data.txt" using i title columnhead, \
    keyentry with spiderplot linestyle 1 title "Alg1", \
    keyentry with spiderplot linestyle 2 title "Alg2", \
    keyentry with spiderplot linestyle 3 title "Alg3", \
    keyentry with spiderplot linestyle 4 title "Alg4", \