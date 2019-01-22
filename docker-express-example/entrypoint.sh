#!/bin/bash

CMD="$@"
echo "RUN: $CMD"

if [[ -z "${LOG}" ]]; then
	echo "Log to stdout"
	$CMD
else
	echo "Log to stdout and file $LOG"
	$CMD 2>&1 | tee $LOG
fi

