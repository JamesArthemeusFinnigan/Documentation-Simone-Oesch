for f in *.mkv;
do
ffmpeg -i $f -filter_complex "[0:v] palettegen" ${f%palette}.png
ffmpeg -i $f -i ${f%palette}.png -filter_complex "[0:v] fps=24,scale=320:-1 [new];[new][1:v] paletteuse" ${f}.gif
done
