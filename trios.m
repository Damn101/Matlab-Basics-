function M=trio(n,m)
B=randi(10,3n,m);
B=(1:(3n/3),1:end)=1
B=((3n/3):(3n-(3n/3))),1:end)=2
B=((3n-(3n/3)):(3n)),1:end)=3
end