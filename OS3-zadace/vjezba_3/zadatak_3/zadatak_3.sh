broj=1
dir=$(pwd)
for zapis in "$dir"/screenshots/*; do
ime=$(basename "$zapis")
if [ -e "$zapis" ]; then
mv "$zapis" "$dir"/screenshots/screenshot_"$broj"_"$ime"
broj=$((broj+ 1))
fi
done

