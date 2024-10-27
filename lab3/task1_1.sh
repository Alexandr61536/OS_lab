INPUT=$1
OLDIFS=$IFS
IFS=','
counter=0
while read year fio group right mark
do
  if [[ "$group" =~ ^.{1,2}-..-21$ && "$mark" =~ ^[3-5]$ ]];
  then
    echo "$fio,${group::-3},$mark" >> result1.txt
  fi
  if [[ "$year" =~ ^202[2-4]$ && "$mark" =~ ^3$ ]]; then
    counter=`expr $counter + 1`
  fi
done < $INPUT
sort -k3,3 -k2,2 result1.txt
echo "Количество троек: $counter" >> result1.txt 
IFS=$OLDIFS
