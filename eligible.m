function adm= under_age(a,b)
if nargin<2 
    b=21;
end
if a<b
   adm=true;
end 
end