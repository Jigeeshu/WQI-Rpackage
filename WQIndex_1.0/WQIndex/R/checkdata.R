# check data for NA and non numeric entries. 



checkdata = function(d, ...)
{

  dm = as.matrix(d) 
  #dm
  
  logic =lapply(dm,  function(m) is.na(m))
  logic1 =lapply(dm, function(m) is.numeric(m))
  msg = "Data is okay :)"
  for(i in 1:nrow(d)*ncol(d))
  {
    
    if(logic[[i]]=="TRUE")
    {
      msg = print("Data has NA value, Please check!")
      break
    }
    
    else if(logic1[[i]]=="FALSE")
    {
      msg = print("Data has non numeric value, Please check!")
      break
    }
    
       
  }
  
  return(msg)
 }

