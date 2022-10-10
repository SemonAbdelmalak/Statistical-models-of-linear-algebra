%Euler method 
com='Enter The Function *hint use the variable y,x : ';
userfun=['@(x,y)' input(com,'s')];
userfun= strcat(userfun);
fun=str2func(userfun);
x= input ('Differnetion at ?\n');
ic=input('Enter the initail condition of y : ');
xic=input('Enter the initail condition of x : ');
h=input('Enter the step unit : ');
n=(x-xic)/h;
while (true) 
ic=ic+h*fun(xic,ic)
xic=xic+h;
if (round(xic)==round(x))
break
end
end
fprintf('The approximate value of differentiation x=%i is %i',x,ic);