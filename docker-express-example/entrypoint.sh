#!/bin/bash

echo "RUN with args"
echo $@

CMD="npm start"

if [[ -z "${LOG}" ]]; then
	echo "Log to stdout"
	$CMD
else
	echo "Log to stdout and file $LOG"
	$CMD 2>&1 | tee $LOG
fi

