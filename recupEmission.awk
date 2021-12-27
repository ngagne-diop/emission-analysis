BEGIN {

  FS = "\"";
print"ev,type,link,id,co,co2,fc,hc,nmhc,nox,no2,pmx,so2";
}

/warmEmissionEvent/ {
  ev  = $2;
  type= $4;
  link= $6;
  id  = $8;
  co  = $10;
  co2 = $12;
  fc  = $14;
  hc  = $16;
  nmhc= $18;
  nox = $20;
  no2 = $22;
  pmx = $24; 
  so2 = $26;
print ev","type","link","id","co","co2","fc","hc","nmhc","nox","no2","pmx","so2;

}

/coldEmissionEvent/ {
  ev  = $2;
  type= $4;
  link= $6;
  id  = $8;
  co  = $10;
  co2 = 0;
  fc  = $12;
  hc  = $14;
  nmhc= $16;
  nox = $18;
  no2 = $20;
  pmx = $22; 
  so2 = 0;

print ev","type","link","id","co","co2","fc","hc","nmhc","nox","no2","pmx","so2;

#print ev,type,link,id,co,co2,fc,hc,nmhc,nox,no2,pmx,so2
}


