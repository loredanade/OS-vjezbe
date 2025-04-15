if [ "$#" -ne 2 ]; then
echo "Potrebno je proslijediti 2 argumenta"
exit 1
fi

apsolutna_putanja="$1"
nastavak="$2"

pronadeno=0
for datoteka in "$apsolutna_putanja"/*"$nastavak"; do
if [ -f "$datoteka" ]; then
pronadeno=1
echo "$(basename "$datoteka")"
fi
done
if [ "$pronadeno" -eq 0 ];then
echo "Nema takve datoteke"
fi
