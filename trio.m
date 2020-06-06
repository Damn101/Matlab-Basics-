function M=trio(n,m)
C=randi(10,3*n,m);
o=3*n;
p=(o-(o-(o/3)));
j=p+1;
q=o-(o/3);
r=q+1;
C(1:(o/3),1:end)=1;
C(j:q,1:end)=2;
C(r:o,1:end)=3;
M=C;
end