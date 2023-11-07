BEGIN {
FS=","
}

NR > 1 {
sum[$8]+=$17
count[$8]++
}

END {
for (value in sum)
        print sum[value]/count[value], value
}
