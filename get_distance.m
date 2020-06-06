function val=get_distance(a,b)
[~,txt,raw]=xlsread("Distances.xlsx");
pp=txt(1:end,1);
po=txt(1,1:end);
a;
b;
class(a);
class(b);

for i=2:338
if i==338
break
end
    pp{i}=convertCharsToStrings(pp{i});
if (pp{i}==a)==1
break

end
end
for k=2:338
if k==338
break   
end
    po{k}=convertCharsToStrings(po{k});
if (po{k}==b)==1
break
end
end
if (i<338)&&(k<338)
vall=raw(i,k);
val=vall{1};
elseif (i>=338)||(k>=338)
    val=-1
end

    