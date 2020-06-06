function aa=sparse2matrix(cellvec)
given_cell=cellvec
storing_cell_mat=given_cell{1}
size_first=storing_cell_mat(1)
size_second=storing_cell_mat(2)
create_mat = randi(1,storing_cell_mat(1),storing_cell_mat(2))
create_mat(1:end,1:end)=given_cell{2}
sizeofmat=size(given_cell)
ops=sizeofmat(2)
opss=size(given_cell)
if opss(2)>2
    for k=3:sizeofmat(2)
        if(k>2)
        elem=given_cell{k}   
        create_mat(elem(1),elem(2))=elem(3)
        end
    end
end    
aa=create_mat
end


    
