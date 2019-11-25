#!/bin/bash

DATA1=OLDATA/subor1.txt
DATA2=OLDATA/subor2.txt
DATA3=OLDATA/subor3.txt
DATA4="/usr/sbin:/usr/bin:/sbin:/bin:/usr/games::/usr/local/games"
DATA5=OLDATA
DATA6=OLDATA/access.log

echo "--- OL1 ---"
awk 'BEGIN {printf " "} {printf("%s",$1)} END {printf "\n"}'  <(uniq <(sort <(grep -E -o '.' $DATA1)))      # OL1

echo "--- OL2 ---"
tr -d '\r' <$DATA2      # OL2

echo "--- OL3 ---"
awk '{FS="\t"; iCol = $2; $2 = $3; $3 = iCol; print;} ' OFS=$'\t' $DATA3      # OL3

echo "--- OL4 ---"
awk -F: '{gsub(/:/,"\n");print}' <(sed 's_::_:_g' <(echo $DATA4))       # OL4

echo "--- OL5 ---"
awk '{sum=sum+$5} END {print sum}' <(grep -E '(\.html|\.txt|\.md)' <(ls -al $DATA5))        # OL5

echo "--- OL6 ---"
awk '{printf $2"\t"$1"\n"}' <(sort -n <(uniq -c <(sort <(awk '{print $1}' $DATA6))))        # OL6

#    Contact autor:
#    MAIL -          csraea@gmail.com
#    TELEGAM -       t.me/csraea
#    INSTAGRAM -     @korotetskiy_
#
#    Korotetskiy©. All rights reserved. 2019.