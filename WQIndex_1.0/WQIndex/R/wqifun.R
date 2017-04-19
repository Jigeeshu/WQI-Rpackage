#  water quality index formula




wqifun = function(x, ...)
{
wqi = numeric(0)
for(i in 1:nrow(x))
{
    wqi[i]= sum(x[i, ])/length(x)  
} 


return(wqi)
}
#WQI = wqifun(qdf)

