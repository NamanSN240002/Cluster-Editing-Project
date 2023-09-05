#!/bin/sh
for var in 1 2 3 4 5 6 7 8 9 10
do
   echo $var
   ./geng -c -s $var > reg_gr.g6
   ./showg -A reg_gr.g6 >> ../graphs/final_nauty_$var.txt
done
