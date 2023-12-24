#!/bin/zsh

FILE_PREFIX="exercise"
cd ..

for i in {1..8}
do
	touch ${FILE_PREFIX}${i}.sh
	chmod +x ${FILE_PREFIX}${i}.sh
done

cd utils
./add-shebang.sh
