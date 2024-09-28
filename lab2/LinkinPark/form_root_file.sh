echo "=====>  ALBUMS  <=====" > "tmp.txt"
for dir in */; do
  echo "${dir::-1}" >> "tmp.txt"
done

printf "\n" >> "tmp.txt"
echo "=====>  TRACKS  <=====" >> "tmp.txt"
for dir in */; do
  echo "=== ${dir::-1} ===" >> "tmp.txt"
  cat "$dir/contents.txt" >> "tmp.txt"
done

cat "tmp.txt" > "root_file.txt"

rm "tmp.txt"
