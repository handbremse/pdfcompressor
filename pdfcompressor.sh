#!/bin/bash 
echo PDF compressor by TG
echo seaching for pdf files
mkdir compressed
c=0
for i in ./*.pdf
do 
    if [ -f "$i" ]; 
    then
        ((c++))
        echo "$c: compressing $i"
        gs -q \
        -dNOPAUSE \
        -dBATCH \
        -dSAFER \
        -sDEVICE=pdfwrite \
        -dCompatibilityLevel=1.3 \
        -dPDFSETTINGS=/screen \
        -dEmbedAllFonts=true \
        -dSubsetFonts=true \
        -dColorImageDownsampleType=/Bicubic \
        -dColorImageResolution=144 \
        -dGrayImageDownsampleType=/Bicubic \
        -dGrayImageResolution=144 \
        -dMonoImageDownsampleType=/Bicubic \
        -dMonoImageResolution=144 \
        -sOutputFile="./compressed/$i" \
        "$i"
    fi
done
if [ $c -eq 0 ];
then
    echo "!!!!There are no .pdfs in this folder"
else
    echo "All .pdfs were compressed!"
fi
exit