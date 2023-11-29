set border 2 front lt black linewidth 1.000 dashtype solid
set boxwidth 0.5 absolute
set style fill solid 0.50
unset key
set pointsize 0.5

set datafile separator ','

set terminal pngcairo
set out 'box.png'

set style data boxplot
set xtics   ("A" 1)
set autoscale y

plot 'my-score.dat' using (1):1
