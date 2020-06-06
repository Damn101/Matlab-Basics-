function adm = valid_date(y,m,d)
if (999<y<9999)&&((0<m<13)&&(0<dd<32)) 
    adm=true;
else
    adm=false;
end
end