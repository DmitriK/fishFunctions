function musicProcMp3
  mp3val -f $argv
  parallel mp3gain -r -c ::: $argv
  parallel python2 /home/dmitri/unrated/goobsoft.py ::: $argv
end
