%Growth Rate
n=input('enter number of points') ;
sum=0;sums=0;sumy=0;sumxy=0;
st=0;
sr=0;
for i=1:1:n
fprintf('Please enter x for %d point',i);
x(i)=input('');
fprintf('Please enter y for %d point',i);
y(i)=input('');
x1(i)=1/x(i);
sum=sum+x1(i);
sums=sums+x1(i)*x1(i);
y1(i)=1/y(i);
sumy=sumy+y1(i);sumxy=sumxy+x1(i)*y1(i);
end
ans=inv([n sum ; sum sums])*[sumy;sumxy];
a0=ans(1,1);
a1=ans(2,1);
a=1/a0
b=a1*a
ybar=(sumy/n);
for ( i = 1:1:n ) 
sr=sr+(y1(1,i)-a0-(a1*x1(1,i)))^2;
st=st+(y1(1,i)-ybar)^2;
end
st 
sr
rsq=(st-sr)/st
r=sqrt(rsq)
z=linspace (x(1),x(n),1000);
plot(z,(a*z)./(b+z),'r')
hold on
stem(x,y,'g');