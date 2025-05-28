if [ $# -ne 2 ]; then
echo "Treba proslijediti dva argumenta"
exit 1
fi

dozvole=$1
dat=$2

if [ "${#dozvole}" -ne 9 ]; then
echo "Treba imati 9 znakova"
exit 1
fi

vlasnik_znakovi=${dozvole:0:3}
grupa_znakovi=${dozvole:3:3}
korisnici_znakovi=${dozvole:6:3}

postavi_dozvole(){
dozvola=$1
value=0
if [ ${dozvola:0:1} = "r" ]; then
value=$((value+4))
fi
if [ ${dozvola:1:1} = "w" ]; then
value=$((value+2))
fi
if [ ${dozvola:2:1} = "x" ]; then
value=$((value+1))
fi
echo -n "$value"
}

oktalna="$(postavi_dozvole $vlasnik_znakovi)$(postavi_dozvole $grupa_znakovi)$(postavi_dozvole $korisnici_znakovi)"
chmod "$oktalna" "$dat"
