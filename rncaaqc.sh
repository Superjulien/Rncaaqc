#! /bin/sh

# Rncaaqc
# by superjulien 
# > https://github.com/Superjulien
# > https://framagit.org/Superjulien
# V1.0

# to replace quotation.txt :

puff=~/Folder/quotation.txt

#############################

declare -a cow=( "tux" "moose" "moofasa" "skeleton" "duck" "flaming-sheep" "koala" "vader" "eyes" "cower" )
declare -a neo=( "cat.ascii" "skull.ascii" "girl.ascii" "girl2.ascii" "jack.ascii" "manga.ascii" "smiley.ascii" "troll.ascii" "trollcat.ascii" "demon.ascii" )

n1=$1
n2=$2
shuf -n 1 ${puff} > /tmp/.quotation.txt
ch=$(cd $( dirname ${BASH_SOURCE[0]}) && pwd )
gf="--ascii ${ch}/ascii/"
declare -a ran
i=0
while [ $i -lt 5 ]
  do
	ran[$i]=$(< /dev/urandom tr -dc 0-9 | head -c 1)
	((i++))
  done
var=`cat /tmp/.quotation.txt`
printf "\n"
if [ -z ${n1} ] ; then
	echo "Please write your choice : - bash rncaaqc.sh neofetch cowsay - or  - bash rncaaqc.sh neofetch - or - bash rncaaqc.sh cowsay -" 
elif [ ${n1} = "neofetch" ] ; then
	neofetch ${gf}${neo[${ran[0]}]} --ascii_colors ${ran[1]} ${ran[2]} ${ran[3]}	
elif [ ${n1} = "cowsay" ] ; then
	cowsay -W 30 -f ${cow[${ran[4]}]} ${var}
else
	echo "-- ERROR --"
fi
if [ -z != ${n2} ] ; then
	if [ ${n2} = "neofetch" ] ; then
		neofetch ${gf}${neo[${ran[0]}]} --ascii_colors ${ran[1]} ${ran[2]} ${ran[3]}	
	elif [ ${n2} = "cowsay" ] ; then
		cowsay -W 30 -f ${cow[${ran[4]}]} ${var}
	else
		echo "-- ERROR --"
	fi
fi
