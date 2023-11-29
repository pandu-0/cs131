BEGIN {
FS=OFS=","
}

{

for (i=2; i < 15; i++) {
	if (length($i) > 1) {
		count[$i]++
	}
}

}

END {
for (i in count) {
	if (i + 0 != i) {
		print i, count[i]
	}
}
}

