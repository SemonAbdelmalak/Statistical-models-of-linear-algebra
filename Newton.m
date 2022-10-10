%Newton method 
com='Enter The Function *hint use the variable y,x';
userfun=['@(x,y)' input(com,'s')];
userfun= strcat(userfun);
fun=str2func(userfun);
com='Enter differnetion of Function ';
userfun=['@(x)' input(com,'s')];
userfun= strcat(userfun);
x=str2func(userfun);
ic=input('initail condition');
n=input('enter the number of iterations');
for i=1:1:n
 xnew=ic-((fun(ic))/x(ic)); ic=xnew;
end
xnew