#! /bin/sh

cd CDH.pmdoc
mkdir -p tmp
for file in *.xml
do
    xmllint --format $file > tmp/$file
done
mv tmp/*.xml .
rmdir tmp
