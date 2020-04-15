%% 用户自定义的预测函数，使用相应准则
function flag=predicate(region)
sd=std2(region);
m=mean2(region);
flag=(sd>20)&(m>26)&(m<255);