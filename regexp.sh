#!/bin/sh

#task 1
DATA1=REDATA/a.txt
DATA2=REDATA/a.txt
DATA3=REDATA/a.txt
DATA4=REDATA/a.txt
DATA5=REDATA/a.txt
DATA6=REDATA/a.txt
DATA7=REDATA/a.txt
DATA8=REDATA/a.txt
DATA9=REDATA/a.txt
DATA10=REDATA/a.txt
DATA11=REDATA/a.txt

#task 2
DATA12=REDATA/b.txt
DATA13=REDATA/b.txt
DATA14=REDATA/b.txt
DATA15=REDATA/b.txt
DATA16=REDATA/b.txt
DATA17=REDATA/b.txt

#task 3
DATA18=REDATA/c.txt
DATA19=REDATA/c.txt
DATA20=REDATA/c.txt
DATA21=REDATA/c.txt
DATA22=REDATA/c.txt
DATA23=REDATA/c.txt
DATA24=REDATA/c.txt
DATA25=REDATA/c.txt
DATA26=REDATA/c.txt
DATA27=REDATA/c.txt
DATA28=REDATA/c.txt


#task 1

echo "--- RE1 ---"
egrep -o "pocitac" $DATA1   # RE1

echo "--- RE2 ---"
egrep -o "POCITAC" $DATA2   # RE2

echo "--- RE3 ---"
egrep -o "\[POCITAC\]" $DATA3   # RE3

echo "--- RE4 ---"
egrep -o "\.pocitac\." $DATA4   # RE4

echo "--- RE5 ---"
egrep -o "\(pocitac\)" $DATA5   # RE5

echo "--- RE6 ---"
egrep -o "Poci\*tac" $DATA6   # RE6

echo "--- RE7 ---"
egrep -o "Poci[\][\]tac" $DATA7   # RE7

echo "--- RE8 ---"
egrep -o "\"pocitac\"" $DATA8    # RE8

echo "--- RE9 ---"
egrep -o "'pocitac'" $DATA9    # RE9

echo "--- RE10 ---"
egrep -o "Poc\+itac\+\+" $DATA10    # RE10

echo "--- RE11 ---"
egrep -o "p\?ocitac\?" $DATA11    # RE11

#task 2

echo "--- RE12 ---"
egrep -o "(výpočtová technika)|(počítač)" $DATA12    # RE12

echo "--- RE13 ---"
egrep -o "(POČÍTAČ)|(počítač)" $DATA13    # RE13

echo "--- RE14 ---"
egrep -o "(Počítač)|(počítač)" $DATA14    # RE14

echo "--- RE15 ---"
egrep -o -i "počítač" $DATA15    # RE15

echo "--- RE16 ---"
egrep -o "^počítač.{0,}" $DATA16    # RE16

echo "--- RE17 ---"
egrep -o ".{0,}počítač$" $DATA17    # RE17

#task 3

echo "--- RE18 ---"
egrep -o '(\b[0-9])\w+\b' $DATA18    # RE18 

echo "--- RE19 ---"
egrep -o "[dtnl][ei]" $DATA19    # RE19

echo "--- RE20 ---"
egrep -o "(0|[1-9][0-9]*)(L|l)?" $DATA20    # RE20

echo "--- RE21 ---"
egrep -o " 0[0-7]*(L|l)?" $DATA21    # RE21

echo "--- RE22 ---"
egrep -o " [1-9][0-9]{2}(l|L)?" $DATA22    # RE22

echo "--- RE23 ---"
egrep -o "(.)\1{2,}" $DATA23    # RE23

echo "--- RE24 ---"
egrep -o "(\<[a-zA-Z]+\>) \1" $DATA24    # RE24

echo "--- RE25 ---"
egrep -o "([a-zA-Z])+\.[a-zA-Z]+(\.[1-9][0-9]*)?@(student\.)?tuke\.sk" $DATA25    # RE25

echo "--- RE26 ---"
egrep -o "([[:blank:]][0-1][0-9]\:[0-5][0-9]\:[0-5][0-9]\.[0-9]{3}[[:blank:]])|([[:blank:]]2[0-3]\:[0-5][0-9]\:[0-5][0-9]\.[0-9]{3}[[:blank:]])" $DATA26    # RE26

echo "--- RE27 ---"
egrep -o "((([0-2][1-9])/(01|[3-9]|1[0-2]))|([0-1][1-9]|2[0-8])/02|31/(0([13578])|(10|12))|30/(0[469]|11))/2[0-9]{3}" $DATA27    # RE27

echo "--- RE28 ---"
egrep -o "\b\w*(\w{2})\w*\1" $DATA28    # RE28

#    Contact autor:
#    MAIL -          csraea@gmail.com
#    TELEGAM -       t.me/csraea
#    INSTAGRAM -     @korotetskiy_
#
#    Korotetskiy©. All rights reserved. 2019.