for f in *.mkv;
do
ffmpeg -hwaccel videotoolbox -i $f -f webm -c:v libvpx -b:v 2M -acodec libvorbis -auto-alt-ref 0 ${f%.mov}.webm -hide_banner
done
