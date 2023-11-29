BEGIN {
FS=","
}

NR > 1 {
count[$3]++
}

END {
for (key in count) {
	print key, "count:", count[key]
}

}
