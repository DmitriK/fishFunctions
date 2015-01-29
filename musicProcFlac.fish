function musicProcFlac
  for i in $argv; set oggs $oggs (basename $i .flac).ogg; end
  parallel oggenc -q5 ::: $argv
  rm $argv
  parallel vorbisgain -n ::: $oggs
end
