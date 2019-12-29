for i in *.mp3;
  do name=`echo $i | cut -d '.' -f 1`;
  echo $name;
  ffmpeg -loop 1 -i image.jpeg -i "$i" -c:a copy -c:v libx264 -shortest "${name}.mp4"
done
