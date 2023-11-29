set boxwidth 0.6 relative
set style fill solid 1.0 
set style histogram 

set datafile separator ','

set terminal pngcairo size 1500,500

set out 'female-genre-histogram.png'

set title "female-genre-count"
set xlabel "genre"
set ylabel "count"
set xtics rotate by 40 right
set bmargin 20

set ytics autofreq
# set yrange[0:20000000]

plot 'female-genre-count.dat' using 2:xtic(1) with boxes lc rgb 'pink' title "genre-count"
