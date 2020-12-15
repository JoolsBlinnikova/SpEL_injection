#!/bin/bash

if grep -iq "expression.getValue(standardEvaluationContext)" ./src/main/java/injection/controller/MainController.java; then
	echo "Hacked!"
	sleep 5
else
	if grep -iq "SimpleEvaluationContext" ./src/main/java/injection/controller/MainController.java;  then
		echo "Good job! Your flag id spel_inj_hack_0f!"
		sleep 10
	fi
fi