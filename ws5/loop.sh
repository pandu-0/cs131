mkdir "do234"
for doloc in $(cat top-100-doloc.txt)
do
	regex="^([^,]*,){8}"
	regex+="$doloc"
	grep -E "$regex" 2019-08.csv > do234/"$doloc".txt
done
