function charnum=char_counter(a,b)
count=0;
if fopen(a)==-1||~ischar(a)==1||isempty(a)||~ischar(b)==1
    charnum=-1;
elseif ischar(a)==1
        open=fopen(a,'rt');
        readstring=fgets(open);
        while ischar(readstring)
            readstring=convertCharsToStrings(readstring);
            vector=size(strfind(readstring,b));
            count=count+vector(2);
            readstring=fgets(open);
end 
if count>=0
charnum=count;
end

end