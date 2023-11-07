#!/usr/local/bin/gnuplot -persist
set style fill transparent solid 0.2 noborder

set datafile separator ' '

set terminal svg
set out 'a3t4.svg'

#set dummy u, v
#set key fixed right top vertical Right noreverse enhanced #autotitle box lt black linewidth 1.000 dashtype solid
#set parametric
set title "travel distance to tip amount" 
set xlabel "travel distance"
set ylabel "tip amount" 
#set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
NO_ANIMATION = 1
set autoscale x
set autoscale y
## Last datafile plotted: "hemisphr.dat"
plot 'travel-distance.dat' using 1:2 with circles lc rgb 'red'
