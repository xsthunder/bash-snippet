OUTPUT_ROOT=output
mkdir -p $OUTPUT_ROOT
IFS=$'\n'
set -e
for d in `find -maxdepth 1 -type d -iname "*完全版*"`
do
    mkdir -p $OUTPUT_ROOT/$d
    for f in `find $d -iname '*.m4a'`
    do
        dist=$OUTPUT_ROOT/`echo $f | sed -e 's/m4a/mp3/g'`
        if test -f $dist
        then
            # echo skip $dist
            continue
        fi
		# -vn remove cover image
		# -q:a 8 limit rate to 48kHz
        ffmpeg.exe -i "$f" -vn -q:a 8 "$dist"

    done
done

