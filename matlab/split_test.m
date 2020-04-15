function v=split_test(B,mindim,fun)
K=size(B,3);%B就是qtdecomp函数传过来的
v(1:K)=false;
for I=1:K
    quadregion=B(:,:,I);
    if size(quadregion,1)<=mindim
        v(I)=false;
        continue
    end
    flag=feval(fun,quadregion);
    if flag
        v(I)=true;
    end
end