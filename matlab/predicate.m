%% �û��Զ����Ԥ�⺯����ʹ����Ӧ׼��
function flag=predicate(region)
sd=std2(region);
m=mean2(region);
flag=(sd>20)&(m>26)&(m<255);