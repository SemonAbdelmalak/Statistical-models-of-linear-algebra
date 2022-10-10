%Trapezoidal method
fprintf ('Please Enter Integration limits ');
f=input('from : ');
l=input('to : ');
n= input ('Enter the number of segments : ');
h= ( l - f ) / n;
sum=0;
com='Enter The Function *hint use the variable x : ';
userfun=['@(x)' input(com,'s')];
userfun=strcat(userfun);
fun=str2func(userfun);
for i= 0:1:n
y= fun(f);
if (i==0||i==n)
sum = y + sum;
else
sum = 2*y + sum;
end 
f=f+h;
sum = sum * ( h/2 )