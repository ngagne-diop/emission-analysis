BEGIN {
  FS="\"";
  ok=0;
}

/person id/ {pers=$2;}
/yes/{ok=1;}
/leg mode/ && ok==1 {print pers,cat,$2;}
/selected/ && /no/ {ok=0;}
/rev/ {cat=substr($5,2,4);}



