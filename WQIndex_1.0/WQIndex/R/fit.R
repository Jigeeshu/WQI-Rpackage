# best curve fit method using 3rd order polynomial


bestfit = function(x, ...)
{
  
  #temperature
  fit_t= coef(lm(x$temperature ~ poly(x$var,3,raw=TRUE)))
  
  a = fit_t[1] + fit_t[2]*x$temperature + fit_t[3]*(x$temperature^2) 
      + fit_t[4]*(x$temperature^3)
  
  #ph
  
  fit_ph= coef(lm(x$ph ~ poly(x$var,3,raw=TRUE)))
  
  b = fit_ph[1] + fit_ph[2]*x$ph + fit_ph[3]*(x$ph^2) 
       + fit_ph[4]*(x$ph^3)
  
  #dissolved oxygen
  fit_do= coef(lm(x$do ~ poly(x$var,3,raw=TRUE)))
  
  c = fit_do[1] + fit_do[2]*x$do + fit_do[3]*(x$do^2) 
  + fit_do[4]*(x$do^3)
  
  #biological oxygen demand
  fit_cod= coef(lm(x$cod ~ poly(x$var,3,raw=TRUE)))
  
  d = fit_cod[1] + fit_cod[2]*x$cod + fit_cod[3]*(x$cod^2) 
  + fit_cod[4]*(x$cod^3)
  
  #chemical oxygen demand
  fit_cod= coef(lm(x$cod ~ poly(x$var,3,raw=TRUE)))
  
  e = fit_cod[1] + fit_cod[2]*x$cod + fit_cod[3]*(x$cod^2) 
  + fit_cod[4]*(x$cod^3)
  
  #fecal coliform
  fit_fc= coef(lm(x$fc ~ poly(x$var,3,raw=TRUE)))
  
  f = fit_fc[1] + fit_fc[2]*x$fc + fit_fc[3]*(x$fc^2) 
  + fit_fc[4]*(x$fc^3)
  
  #total coliform
  fit_tc= coef(lm(x$tc ~ poly(x$var,3,raw=TRUE)))
  
  g = fit_tc[1] + fit_tc[2]*x$tc + fit_tc[3]*(x$tc^2) 
  + fit_tc[4]*(x$tc^3)
  
  + fit_fc[4]*(x$fc^3)
  
  #total nitrogen
  fit_tkn= coef(lm(x$tkn ~ poly(x$var,3,raw=TRUE)))
  
  h = fit_tkn[1] + fit_tkn[2]*x$tkn + fit_tkn[3]*(x$tkn^2) 
  + fit_tkn[4]*(x$tkn^3)
  
  return(list(temperature=a, ph = b, do =c, bod =d, cod = e, fc = f, tc = g, tkn = h))

}



