for f in *.mkv;
do
ffmpeg -i $f -filter_complex "[0:v] palettegen" ${f%palette}.png
ffmpeg -i $f -ss 3 -c copy output.mp4 ${f%palette}.png -filter_complex "[0:v] fps=24,scale=500:-1 [new];[new][1:v] paletteuse" ${f}.gif
done


