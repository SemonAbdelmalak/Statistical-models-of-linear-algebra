o=input('please enter the num of variabels');
hh=zeros(1,o);
for (mm=1:1:o)
    hh(1,mm)=input('input the initial conditions');
end
h=input('please enter the num of iteration');
for ( i= 1:1:o )
    for ( j= 1:1:o+1 )
        s=input('please enter the amplitude with the right directions');
        a(i,j)=s;
    end
end
for ( m= 1:1:o )
    for ( q= 1:1:o )
        if (a(m,m)>=a(q,m))
            break 
        else 
            x = a(m,:);
            a(m,:)=a(q,:)
            a(q,:)=x;
        end
    end
end

for ( l= 1:1:o )
        sum=0;
        for (n=1:1:o)
           if (l==n) continue
           end
           sum = sum+abs(a(l,n));

        end
        if (abs(a(l,l))<=sum)
            disp('check your equations please.')
            return
        end
end
       
   for ( k= 1:1:h )
        for(l=1:1:o)
            sum=0;
            for (n=1:1:o)
                if (l==n) continue
                end
                sum = sum+a(l,n)*hh(n);
      end
                x=(a(l,o+1)-sum)/a(l,l);
                cc(l)=x;
        end
        hh= cc
   end