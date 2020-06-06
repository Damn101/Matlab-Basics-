function adm = valid_date(y,m,d)
if ~(isscalar(y)&&isscalar(m)&&isscalar(d))
    adm=false;
elseif((mod(y,100)==0)&&(mod(y,400)==0))
        if(m==1||m==3||m==5||m==7||m==8||m==10||m==12)
                if (0<d)&&(d<32);
                adm=true;
                else
                adm=false;    
                end          
        elseif (m==2)
                if(1<d)&&(d<30);
                adm=true;
                else
                adm=false;    
                end    
        elseif(m==4||m==6||m==9||m==11)
                if(0<d)&&(d<31);
                adm=true;
                else
                adm=false;    
                end
        elseif(m>12)
            adm=false;    
        end
elseif((mod(y,100)==0)&&(~(mod(y,400)==0)))
        if(m==1||m==3||m==5||m==7||m==8||m==10||m==12)
                if (0<d)&&(d<32);
                adm=true;
                else
                adm=false;    
                end          
        elseif (m==2)
                if(1<d)&&(d<2);
                adm=true;
                else
                adm=false;    
                end    
        elseif(m==4||m==6||m==9||m==11)
                if(0<d)&&(d<31);
                adm=true;
                else
                adm=false;    
                end 
         elseif(m>12)
            adm=false;       
        end        
elseif((mod(y,4)==0))
        if(m==1||m==3||m==5||m==7||m==8||m==10||m==12)
                if (0<d)&&(d<32);
                adm=true;
                else
                adm=false;    
                end          
        elseif (m==2)
                if((0<d)&&(d<30));
                adm=true;
                else
                adm=false;    
                end    
        elseif(m==4||m==6||m==9||m==11)
                if(0<d)&&(d<31);
                adm=true;
                else
                adm=false;    
                end
         elseif(m>12)
            adm=false;        
        end        
elseif~((mod(y,4)==0))
        if(m==1||m==3||m==5||m==7||m==8||m==10||m==12)
                if (0<d)&&(d<32);
                adm=true;
                else
                adm=false;    
                end          
        elseif (m==2)
                if(1<d)&&(d<29);
                adm=true;
                else
                adm=false;    
                end    
        elseif(m==4||m==6||m==9||m==11)
                if(0<d)&&(d<31);
                adm=true;
                else
                adm=false;    
                end
         elseif(m>12)
            adm=false;       
        end        

end
