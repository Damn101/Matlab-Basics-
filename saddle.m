function indices=saddle(A)
b=size(A)
A
indices=[]
sis=size(indices)
if(b(2)==1)
minimum=min(A)
se=find(A==minimum)
sizese=size(se)
    if (any(sizese>1)==1)
        for u=1:sizese(1)
        indices(u,1:2)=[se(u),1]  
        end
        elseif ~(any(sizese>1)==1)
        indices(1,1:2)=[se,1]
    end
elseif isscalar(A)==1
     indices=1
elseif~(b(2)==1)
 for n=1:b(1)
     [maximum,index]=max(A(n,1:end));
     index
     v=maximum
     if n==1
         checkrepeat=find(A(1,1:end)==v)
         checksize=size(find(A(1,1:end)==v))
         for k=1:checksize(2)
             bm=A(:,checkrepeat(k))
            mins=min(bm)
            if v==mins
             fi=1
             indices(k,1:2)=[n,checkrepeat(k)] 
             sis=size(indices)
            end
         end
      elseif n>=2
          
         for k=1:checksize(2)
         bm=A(:,checkrepeat(k))
        mins=min(bm)
        if v==mins
         fi=1
         indices(sis(1)+k,1:2)=[n,checkrepeat(k)]  
        end
         end
         sis=size(indices)
     end
 end
end
if(b(1)==1)&&(b(2)==1)
    indices=[1,1];
end


 
