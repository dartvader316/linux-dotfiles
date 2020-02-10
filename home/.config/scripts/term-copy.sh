#!/bin/bash

#There must be some terminal parser, but im too lazy :)

TERM_CMD=st
COUNT=$1

for i in $(seq 1 $COUNT); do
	if [ "$TERM_CMD" == "st" ]; then 
		$TERM_CMD &
	else
		if [ "$TERM_CMD" == "urxvt" ]; then
			$TERM_CMD -cd $PWD &
		else 
			echo "Unsupported terminal cmd"
			break

		fi
	fi
done
