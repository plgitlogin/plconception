

rm all.md
for i in *.md 
do
cat $i >>all.tutu
done

mv all.tutu all.md
pandoc all.md -o all.pdf



