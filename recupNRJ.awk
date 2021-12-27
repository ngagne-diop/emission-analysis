BEGIN {

  FS = "\"";
print"id,nrj";
}

/vehicle id/ {
  id  = $2;
  nrj = $4;

print id","nrj;

}


