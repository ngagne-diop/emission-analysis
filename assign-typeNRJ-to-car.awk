BEGIN {
  FS="\"";
  new=0;
  th=0.6;
  ff="head.xml";
  str1="<vehicle id=\"";
  str2="\" type=\"";
  str3="\"/>";
}

/person id/ {
  new =1;
  id=$2;
}

/leg mode/ && /car/ && new==1 {

 if(rand()<th) {
   type="car_diesel";
 } else { 
   type="car_petrol";
 }

 print  "  "str1 id  str2 type str3 >> ff;
 new = 0;

}

/leg mode/ && /truck/ && new==1 {
 type="truck";
 print  "  "str1 id  str2 type str3 >> ff;
 new = 0;
}

/leg mode/ && /bike/ && new==1 {
 type="bike";
 print  "  "str1 id  str2 type str3 >> ff;
 new = 0;
}


/leg mode/ && /walk/ && new==1 {
 type="walk";
 print  "  "str1 id  str2 type str3 >> ff;
 new = 0;
}

/leg mode/ && /pt/ && new==1 {
 type="pt";
 print  "  "str1 id  str2 type str3 >> ff;
 new = 0;
}


END {
 print "</vehicleDefinitions>" >> ff ;
}
