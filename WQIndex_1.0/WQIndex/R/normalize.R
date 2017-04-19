# Non dimensionalize the parameter values for use in the same equation. 


normalize = function(x, ...)
{
  
  #temperature
  a = ((x$temperature - min(x$temperature))/ (max(x$temperature)- min(x$temperature)))*100 
  
  #ph
  b = ((x$ph - min(x$ph))/ (max(x$ph)- min(x$ph)))*100
  #do
  c = ((x$do - min(x$do))/ (max(x$do)- min(x$do)))*100
  #bod
  d = ((x$bod - min(x$bod))/ (max(x$bod)- min(x$bod)))*100
  #cod
  e = ((x$cod - min(x$cod))/ (max(x$cod)- min(x$cod)))*100
  #fc
  f = ((x$tc - min(x$tc))/ (max(x$tc)- min(x$tc)))*100
  
  #tc
  g = ((x$fc - min(x$fc))/ (max(x$fc)- min(x$fc)))*100
  #tkn
  h = ((x$tkn - min(x$tkn))/ (max(x$tkn)- min(x$tkn)))*100
  
  
  return(list(temperature=a, ph=b, do=c, bod = d, cod=e,  tc=f, fc=g, tkn=h))
  
  
}


