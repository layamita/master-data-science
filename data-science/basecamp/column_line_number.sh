#!/bin/bash
DELIMITER=$1
FILE=$2

#echo $DELIMITER, $FILE
NUM_COLUMNS=$(head -1 ${FILE} | tr ${DELIMITER} "\n" | wc -l) 
paste <(seq ${NUM_COLUMNS}) <(head -1 ${FILE} | tr ${DELIMITER} "\n")

