#!/bin/bash

cd ~/myexpos/spl/

SPL_PROGS_FOLDER="$HOME/myexpos/spl/spl_progs"



for file in "$SPL_PROGS_FOLDER"/*spl; do
	
	echo "compiling $file"
	./spl "$file"
done


cd ~/myexpos/expl/

EXPL_PROGS_FOLDER="$HOME/myexpos/expl/expl_progs"

for file in "$EXPL_PROGS_FOLDER"/*.expl; do
		
	echo "compiling $file"
	./expl "$file"
done

EXPL_SAMP_FOLDER="$HOME/myexpos/expl/samples"

for file in "$EXPL_SAMP_FOLDER"/*.expl; do

        echo "compiling $file"
	./expl "$file"
done

cd ~/myexpos/xfs-interface/

./xfs-interface run batch
