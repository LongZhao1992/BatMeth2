Sample1=$1
Sample2=$2
Sample1_out=$3
Sample2_out=$4

awk 'ARGIND==1{a[$NF]=$0}ARGIND==2{if($NF in a){print a[$NF]}}' $Sample1 $Sample2 > $Sample1_out
awk 'ARGIND==1{a[$NF]=$0}ARGIND==2{if($NF in a){print $0 }}' $Sample1 $Sample2 > $Sample2_out
