%Exponential method 
n=input('Enter number of points : ') ;
sum=0;sums=0;sumy=0;sumxy=0;
st=0;
sr=0;
x=[1,n];
y=[1,n];
y1=[1,n];
x1=[1,n];
for i=1:1:n
fprintf('Enter the %d of x : ',i);
x(1,i)=input('');
fprintf('Enter the %d of y : ',i);
y(1,i)=input('');sum=sum+x(1,i);
sums=sums+x(1,i)*x(1,i);
y1(1,i)=log(y(1,i));
sumy=sumy+y1(1,i);
sumxy=sumxy+x(1,i)*y1(1,i);
end
ans=inv ([n sum ; sum sums])*[sumy;sumxy];
a0=ans(1,1);
a1=ans(2,1);
b=a1
a=exp(a0)
ybar=(sumy/n);
for ( i = 1:1:n )
sr=sr+(y1(1,i)-a0-(a1*x(1,i)))^2;
st=st+(y1(1,i)-ybar)^2;
end 
st 
sr
rsq=(st-sr)/st
r=sqrt(rsq)
z=linspace (x(1),x(n),1000);
plot(z,a*exp(b*z),'r')
hold onstem(x,y,'g');