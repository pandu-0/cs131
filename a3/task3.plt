set boxwidth 0.6 relative
set style fill solid 1.0 
set style histogram 

set datafile separator ' '

set terminal svg

set out 'a3t3.svg'

set title "num passengers to tip amount"
set xlabel "num of passengers"
set ylabel "tip amount"

set yrange[0:10]

plot 'tip-amount.dat' using 1:2:xtic(1) with boxes lc rgb 'gray' title "average tip amount"
