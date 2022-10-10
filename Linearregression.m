%Linear regression
n=input('Please enter the number of data points : ');
x=[1,n];
y=[1,n];
y2=[1,n];
for ( i= 1:1:n )
fprintf('Please enter x for %d point : ',i);
x(1,i)=input('');
fprintf('Please enter y for %d point : ',i);
y(1,i)=input('');
end 
sumx=0;
sumy=0;
sumxsq=0;
sumxy=0;
st=0;
sr=0;for ( i=1:1:n ) 
sumx= x(1,i) + sumx;
sumy= y(1,i) + sumy;
sumxsq= sumxsq+(x(1,i)^2);
sumxy=sumxy+ x(1,i) * y(1,i);
end
sol=inv ([n sumx ; sumx sumxsq])*[sumy;sumxy];
a0= sol (1,1) 
a1=sol ( 2,1)
ybar=(sumy/n);
for ( i = 1:1:n ) 
y2 ( 1,i )= a0 + a1 .* x(1,i) ;
sr=sr+(y(1,i)-a0-(a1*x(1,i)))^2;
st=st+(y(1,i)-ybar)^2;
end
st 
sr
rsq=(st-sr)/st
r=sqrt(rsq)
z=linspace (x(1),x(n),1000);
plot(z,a0+a1*z,'r')
hold on
stem(x,y,'g')