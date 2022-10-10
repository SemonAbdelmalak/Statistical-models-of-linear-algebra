%Bisection method
com='Enter The Function *hint use the variable y,x';
userfun=['@(x,y)' input(com,'s')]
userfun= strcat(userfun)
fun=str2func(userfun)
A=input('enter the interval starting');
B=input('enter the interval end');
n=input('enter the nomber of iterations');
for i=1:1:n
 x=(A+B)/2;
 if fun(A)*fun(x)>0
 A=x;
 else 
 B=x;
 end
end
x