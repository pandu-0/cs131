BEGIN {
FS=","
}

NR > 1 {
sum[$8,$9]+=$17
count[$8,$9]++
}

END {
highest_avg=0
greatest_pair=""

for (pair in sum) {
	average = sum[pair]/count[pair]
	if (average > highest_avg) {
		highest_avg=average
		greatest_pair=pair
	}
}
gsub(/\.0/,".0  ", greatest_pair)
print greatest_pair, "is the pair with highest total average of", highest_avg
}
