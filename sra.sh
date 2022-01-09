

while read target; do


sublist3r -d $target -o tmp/sublister_$target.txt&>/dev/null&
amass enum -active -d $target -o tmp/amass_$target.txt&>/dev/null&
assetfinder $target &> tmp/assFinder_$target.txt&
subbrute $target &> tmp/bruted_$target.txt&
gobuster dns -d $target -w ~/Documents/subdomains/medium.txt -o tmp/brute_go_$target.txt&>/dev/null&

#last(NO GOOD FORMAT)
#kok $target --no-http -o .


done
