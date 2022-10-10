%Power model
n=input('please enter the number of data points:'); 
x=[n];
y=[n];
X=[n];
Y=[n];
sumX=0;
sumY=0;
sumXsq=0;
sumXY=0;
sr=0;
st=0;
for ( i= 1:1:n )
fprintf('please enter x for %d point:',i);
x(1,i)=input(''); 
fprintf('please enter y for %d point:',i);
y(i)=input('');
X(i)=log10(x(i));Y(i)=log10(y(i));
sumX= X(i) + sumX;
sumY= Y(i) + sumY;
sumXsq= sumXsq+(X(i).^2);
sumXY=sumXY+ Y(i) .* X(i);
end
sol=inv ([n sumX ; sumX sumXsq])*[sumY;sumXY];
a=10^sol(1,1)
b=sol(2,1)
ybar=(sumY/n);
for s=1 : 1 : n
sr=sr+(Y(s)-a0-(a1*X(s)))^2;
st=st+(Y(s)-ybar)^2;
end
sr
st
rsq=(st-sr)/st
r=sqrt(rsq)
z=linspace (x(1),x(n),1000);
plot(z,a*z.^b,'r')
hold on
stem(x,y,'g');