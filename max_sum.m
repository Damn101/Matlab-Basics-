function [sumk,inde]=max_sum(x,y)

sumw=0;
s=size(x);
if (any(x<0)==1)&&~(s(2)<y)
    assd=movsum(x,y,'Endpoints','discard');
    sumk=max(assd);
    inde=find(assd==max(assd));
    
elseif (s(2)>=y)
    
    m=size(x);
    suml=0;
    op=0;
    ch=nchoosek(x,y);
    for i=1:y
        op=x(max(x));
        suml=suml+op;
        x(max(x))=[];
    end
    p=size(ch);
    for j=1:p(1)
        lll=ch(j,1:p(2));
    if sum(ch(j,1:p(2)))==suml
        sumk=suml;
        inde=ch(j,1);
        break
    end
    end
elseif (s(2)<y)
    sumk=0;
    inde=-1;
end
end
