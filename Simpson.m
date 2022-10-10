%Simpson’s method 
com='Enter The Function *hint use the variable x';
userfun=['@(x)' input(com,'s')]
userfun= strcat(userfun)
fun=str2func(userfun)
h=input('enter the step size');
x=input('enter the first value');
y=input('enter the final value');
n=(y-x)/h;
E=0;Odd=0;
for i=1:1:n-1
 x1=x+h;
 x=x1; if rem(i,2)==0
 E=E+fun(x1);
 else
 Odd=Odd+fun(x1);
 end 
end
I=(h/3)*(fun(0)+fun(y)+(4*Odd)+(2*E))