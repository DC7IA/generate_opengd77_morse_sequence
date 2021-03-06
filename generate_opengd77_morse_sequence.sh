#!/bin/bash
dah="38,6,"
di="38,2,"
inpause="0,2,"
intcharpause="0,6,"

read -p "Where do you want to save the string? If the file already exists, it will be overwritten. [generated.txt] " outputfile
outputfile=${outputfile:-generated.txt}
read -p "String you want to convert: [QRV] " string
string=${string:-QRV}
string=$(echo $string | tr '[:lower:]' '[:upper:]')
rm $outputfile

for (( i=0; i<${#string}; i++ )); do
  convert="${string:$i:1}"

   case "$convert" in
        A)      printf %s "$di$inpause$dah$intcharpause" >> $outputfile ;;
        B)      printf %s "$dah$inpause$di$inpause$di$inpause$di$intcharpause" >> $outputfile ;;
        C)      printf %s "$dah$inpause$di$inpause$dah$inpause$di$intcharpause" >> $outputfile ;;
        D)      printf %s "$dah$inpause$di$inpause$di$intcharpause" >> $outputfile ;;
        E)      printf %s "$di$intcharpause" >> $outputfile ;;
        F)      printf %s "$di$inpause$di$inpause$dah$inpause$di$intcharpause" >> $outputfile ;;
        G)      printf %s "$dah$inpause$dah$inpause$di$intcharpause" >> $outputfile ;;
        H)      printf %s "$di$inpause$di$inpause$di$inpause$di$intcharpause" >> $outputfile ;;
        I)      printf %s "$di$inpause$di$intcharpause" >> $outputfile ;;
        J)      printf %s "$di$inpause$dah$inpause$dah$inpause$dah$intcharpause" >> $outputfile ;;
        K)      printf %s "$dah$inpause$di$inpause$dah$intcharpause" >> $outputfile ;;
        L)      printf %s "$di$inpause$dah$inpause$di$inpause$di$intcharpause" >> $outputfile ;;
        M)      printf %s "$dah$inpause$dah$intcharpause" >> $outputfile ;;
        N)      printf %s "$dah$inpause$di$intcharpause" >> $outputfile ;;
        O)      printf %s "$dah$inpause$dah$inpause$dah$intcharpause" >> $outputfile ;;
        P)      printf %s "$di$inpause$dah$inpause$dah$inpause$di$intcharpause" >> $outputfile ;;
        Q)      printf %s "$dah$inpause$dah$inpause$di$inpause$dah$intcharpause" >> $outputfile ;;
        R)      printf %s "$di$inpause$dah$inpause$di$intcharpause" >> $outputfile ;;
        S)      printf %s "$di$inpause$di$inpause$di$intcharpause" >> $outputfile ;;
        T)      printf %s "$dah$intcharpause" >> $outputfile ;;
        U)      printf %s "$di$inpause$di$inpause$dah$intcharpause" >> $outputfile ;;
        V)      printf %s "$di$inpause$di$inpause$di$inpause$dah$intcharpause" >> $outputfile ;;
        W)      printf %s "$di$inpause$dah$inpause$dah$intcharpause" >> $outputfile ;;
        X)      printf %s "$dah$inpause$di$inpause$di$inpause$dah$intcharpause" >> $outputfile ;;
        Y)      printf %s "$dah$inpause$di$inpause$dah$inpause$dah$intcharpause" >> $outputfile ;;
        Z)      printf %s "$dah$inpause$dah$inpause$di$inpause$di$intcharpause" >> $outputfile ;;
        1)      printf %s "$di$inpause$dah$inpause$dah$inpause$dah$inpause$dah$intcharpause" >> $outputfile ;;
        2)      printf %s "$di$inpause$di$inpause$dah$inpause$dah$inpause$dah$intcharpause" >> $outputfile ;;
        3)      printf %s "$di$inpause$di$inpause$di$inpause$dah$inpause$dah$intcharpause" >> $outputfile ;;
        4)      printf %s "$di$inpause$di$inpause$di$inpause$di$inpause$dah$intcharpause" >> $outputfile ;;
        5)      printf %s "$di$inpause$di$inpause$di$inpause$di$inpause$di$intcharpause" >> $outputfile ;;
        6)      printf %s "$dah$inpause$di$inpause$di$inpause$di$inpause$di$intcharpause" >> $outputfile ;;
        7)      printf %s "$dah$inpause$dah$inpause$di$inpause$di$inpause$di$intcharpause" >> $outputfile ;;
        8)      printf %s "$dah$inpause$dah$inpause$dah$inpause$di$inpause$di$intcharpause" >> $outputfile ;;
        9)      printf %s "$dah$inpause$dah$inpause$dah$inpause$dah$inpause$di$intcharpause" >> $outputfile ;;
        0)      printf %s "$dah$inpause$dah$inpause$dah$inpause$dah$inpause$dah$intcharpause" >> $outputfile ;;
   esac


done
truncate -s-1 $outputfile
echo "Content of generated.txt:"
cat $outputfile
printf "\n"
