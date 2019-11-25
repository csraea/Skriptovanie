#!/bin/bash

EXIT_SUCCESS=0				# exit if the execution was successful
EXIT_INVALID_PARAM_NUM=20	# exit in the case of invalid number of parameters
EXIT_INVALID_FOLDER=30		# exit if a parameter is not a folder

# A function to handle errors
ERROR_MESSAGE() {
	echo $2 1>&2
	exit $1
}

# Main part of the program starts here
[ $# -ne 1 ] && ERROR_MESSAGE $EXIT_INVALID_PARAM_NUM "ZLY POCET PARAMETROV. KONCIM."
[ ! -d "$1" ] && ERROR_MESSAGE $EXIT_INVALID_FOLDER "NEPLATNY ADRESAR. KONCIM."

while read Line
do
	awk '{printf $1"\t"}' <(ls $Line | xargs -n 1 basename) 
	MYVAR=$(awk '{print $1}' <(wc -l <(egrep '(^[^A-Z]{1,}$)' <(cat $Line)))) 
	echo "$MYVAR"
	
	awk '{printf $1"\t"}' <(ls $Line | xargs -n 1 basename) 1>&2
	[ "$MYVAR" -ne 0 ] && echo "ano" 1>&2 || echo "nie" 1>&2
	
done < <(sed 's_//_/_g' <(awk -v pwd="$1" '{print pwd"/"$9}' <(egrep '(-.........\s)' <(ls -lSr $1))))
	
exit $EXIT_SUCCESS

#    Contact autor:
#    MAIL -          csraea@gmail.com
#    TELEGAM -       t.me/csraea
#    INSTAGRAM -     @korotetskiy_
#
#    Korotetskiy©. All rights reserved. 2019.