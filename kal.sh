#!/bin/bash

R='\033[1;31m'
G='\033[1;32m'
B='\033[1;34m'
Y='\033[1;33m'
C='\033[1;36m'
D='\033[0m'

function Percent(){
    message="$1"
    max=$2 
        i=0
        while [ $i -le $max ]; do
            echo -ne "\r${G}[+]${D} $message ${C}$i${D} %"
            sleep 0.02
            if [ $i -eq 100 ]; then
                echo -ne "${C} [complete!]${D}\n"
            fi
            let i++
        done
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    Percent "Loading..." 100
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;34m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%1+1))
        sleep 0.01
    done
}

ko(){
echo -e "\n"
printf "$C========================================="
load
echo " "
printf "$G[operator dalam tools ini adalah]"
echo " "
echo "[1] penjumlahan"
sleep 0.60
echo "[2] pengurangan"
sleep 0.60
echo "[3] pembagian"
sleep 0.60
echo "[4] perkalian"
sleep 0.60
echo "[5] sisa bagi"
echo "  "
sleep 0.80
printf "${C}bilangan ke 1 =[ "
read a
printf "${Y}bilangan ke 2 =[ "
read b
printf "${G}operator  =[ "
read c
printf "$R===========[>${Y}JAWABAN$R<]==========="
echo "  "
sleep 0.80
if [ $c = 1 ]
then
printf "=====[ $C[$a]$G + $Y[$b] = [`expr $a + $b`] $R]====="
elif [ $c = 2 ]
then
printf "=====[ $C[$a]$G - $Y[$b] = [`expr $a - $b`]$R]======"
elif [ $c = 3 ]
then
printf "=====[ $C[$a]$G ÷ $Y[$b] = [`expr $a / $b`]$R]====="
elif [ $c = 4 ]
then
printf "=====[ $C[$a]$G × $Y[$b] = [`expr $a \* $b`]$R]====="
elif [ $c = 5 ]
then
printf "=====[ $C[$a]$G ℅ $Y[$b] = [`expr $a % $b`] $R]====="
fi
echo "    "
sleep 2.00
echo "======================================="
echo "   "
printf "$G[apa kha $siapa ingin menghitung lagi? ]\n"
printf "$B[ y ]untuk ya $R[ t ]untuk tidak\n" $C
read input
if [ $input = y ]
	then
	  printf $G"selamat menghitung kembali kha $siapa..."
	  sleep 0.90
	  ko
fi
if [ $input = n ]
	then
	   printf "$R[sampai jumpaa kha $siapa]"
	   sleep 2.00
	   exit
fi

}

echo "    "
sleep 2.00
printf "$R;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
sleep 0.09
printf "$R;;                        ;;\n"
sleep 0.09
printf "$R;;        Loading...      ;;\n"
sleep 0.09
printf "$R;;                        ;;\n"
sleep 0.09
printf "$R;;;;;;;;;;;;;;;;;;;;;;;;;;;;\n"
echo "    "
Percent "Loading..." 100
sleep 0.70
echo "   "
printf "$C=========$G[Kalkulator]$C=========\n"
sleep 0.80
printf "$B=========$G[Samsul-M  ]$B=========\n"
sleep 0.80
printf "$Y=========$G[cyberwyra ]$Y=========\n"
echo "	"
printf "siapa nama kaka? \n$C"
read siapa
sleep 0.80
echo " "
printf "$G[selamat datang kha $C$siapa]"
sleep 0.90
printf "$G[operator dalam tools ini adalah]"
echo " "
echo "[1] penjumlahan"
sleep 0.60
echo "[2] pengurangan"
sleep 0.60
echo "[3] pembagian"
sleep 0.60
echo "[4] perkalian"
sleep 0.60
echo "[5] sisa bagi"
echo "  "
sleep 0.80
printf "${C}bilangan ke 1 =[ "
read a
printf "${Y}bilangan ke 2 =[ "
read b
printf "${G}operator  =[ "
read c
printf "$R===========[>${Y}JAWABAN$R<]============"
echo "  "
sleep 0.80
if [ $c = 1 ]
then
printf "=====[ $C[$a]$G + $Y[$b] = [`expr $a + $b`] $R]====="
elif [ $c = 2 ]
then
printf "=====[ $C[$a]$G - $Y[$b] = [`expr $a - $b`]$R]======"
elif [ $c = 3 ]
then
printf "=====[ $C[$a]$G ÷ $Y[$b] = [`expr $a / $b`]$R]====="
elif [ $c = 4 ]
then
printf "=====[ $C[$a]$G × $Y[$b] = [`expr $a \* $b`]$R]====="
elif [ $c = 5 ]
then
printf "=====[ $C[$a]$G ℅ $Y[$b] = [`expr $a % $b`] $R]====="
fi
echo "    "
sleep 2.00
echo "======================================="
echo "   "
printf "$G[apa kha $siapa ingin menghitung lagi? ]\n"
printf "$B[ y ]untuk ya $R[ t ]untuk tidak\n" $C
read input
if [ $input = y ]
	then
	  printf $G"selamat menghitung kembali kha $siapa..."
	  sleep 0.90
	  ko
fi
if [ $input = n ]
	then
	   printf "$R[sampai jumpaa kha $siapa]"
	   sleep 2.00
	   exit
fi

