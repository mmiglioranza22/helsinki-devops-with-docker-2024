#!/bin/bash

VAR_1=$1
VAR_2=$2

echo "var 1 is $VAR_1. var 2 is $VAR_2"

# split repo name by slash (mmiglioranza22/express-app) https://stackoverflow.com/questions/918886/how-do-i-split-a-string-on-a-delimiter-in-bash
arrVAR_1=(${VAR_1//// })

echo "${arrVAR_1[1]}"

git clone "https://github.com/$VAR_1.git" &&
	cd "${arrVAR_1[1]}/part3/express-app" &&
	docker login && docker build -t testing . &&
	docker tag testing "$VAR_2" && docker push "$VAR_2" &&
	echo "Repo cloned, image built and pushed. Done"
