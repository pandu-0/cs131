BEGIN {
FS=","
}

NR > 1 {
sum[$5]+=$17
count[$5]++
}

END {
for (value in sum)
        print value, sum[value]/count[value]
}
