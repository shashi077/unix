#!/bin/bash
count=0
echo "enter the number of pages"
read n
echo "eneter the page number"
for (( i=1; i<=$n; i++ ))
do
read a[i];
done
echo "enter the number of frames"
read no
for (( j=1; j<=$no; j++ )) 
do
frame[j]=-1
#echo ${frame[j]}
done
j=0
printf "ref_string \t\tpage frames\n"

for (( i=1; i<=$n; i++ )) 
do
#  echo ${a[i]}
printf "${a[$i]} ";
avail=0
for (( k=0; k<$no; k++ ))
  do
  if [ "${frame[$k]}" == "${a[$i]}" ]
      then 
          avail=1
    fi
             if [ $avail == 0 ]
             then 
               1=${a[$i]}
        #echo $1 
                frame[j]=$1
        j= ' expr $j + 1 '
        j= ' expr $j % $no '
        count= ' expr $count + 1 '
             for (( k=0; k<$no; k++ ))
        do
             printf "\t\t${frame[k]}"
        done 
        fi 
        
     done 
     echo
   done
