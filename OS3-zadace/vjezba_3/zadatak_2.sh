broj="$1"
if [ "$broj" -ge 1 ] && [ "$broj" -le 10 ]; then
touch brojevi.txt
niz=()
for (( i=broj; i<11; i++ )); do
niz+="$i"
done
echo "${niz[@]}" > brojevi.txt
else
echo "Neodgovarajuci argument, unesi broj izmedu 1 i 10"
fi
 
