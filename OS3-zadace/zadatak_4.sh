
script="$(cd "$(dirname "$0")" && pwd)"
if [ "$#" -ne 1 ]; then
echo "Pogrešan broj argumenata. Unesi naziv direktorija kao argument"
exit 1
fi

dir="$script/$1"
echo "$dir"
if [ ! -d "$dir" ]; then
echo "Direktorij ne postoji u istom direktoriju kao i skripta"
exit 1
fi

cd "$dir"

zip -r "./svi_zapisi.zip" . 



