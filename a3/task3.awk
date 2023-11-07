BEGIN {
FS=","
}

NR > 1 {
sum[$4]+=$14
count[$4]++
}

END {
for (value in sum)
        print value, sum[value]/count[value]
}
