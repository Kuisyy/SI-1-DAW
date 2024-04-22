#!/bin/bsh 
 if [-r $1]
 then 
 echo es legible 
 fi 
 
 if [-w $1] 
 then 
 echo es grabable 
 fi 
 
 if [-x $1] 
 then 
 echo es ejecutable 
 fi
