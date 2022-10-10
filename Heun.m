%Heun’s method
com='Enter The Function hint use the variable x,y : ';
userfun=['@(x,y)' input(com,'s')];
userfun= strcat(userfun);
fun=str2func(userfun);
x= input ('Differnetion at ?\n');
ic=input('Initail condition of y : ');
xic=input('Initail condition of x : ');
h=input('Enter the step unit : ');
while (xic<=x)
y=ic;
org=fun(xic,ic);
ic=ic+h*org;
xic=xic+h;
new=fun(xic,ic);
yic=y+(h/2)*(org+new)
ic=yic;
end
fprintf('The approximate value of differentiation x=%i is %i',x,yic);