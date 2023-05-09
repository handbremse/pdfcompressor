#!/bin/bash 
echo "PDF compressor by TG"
echo "seaching for pdf files"
mkdir "__compressed"
alreadyCompressed=0
compressed=0
for i in ./*.pdf
do 
    if [ -f "./__compressed/$i" ];
    then
        echo "$i is already compressed"
        ((alreadyCompressed++))
    elif [ -f "$i" ]; 
    then
        ((compressed++))
        echo "$compressed: compressing $i"
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
        -sOutputFile="./__compressed/$i" \
        "$i"
    fi
done
if [ $compressed -eq 0 ];
then
    echo "!!!!There are no .pdfs in this folder"
fi
echo "$compressed files are compressed!"
echo "$alreadyCompressed files are already compressed!"
exit