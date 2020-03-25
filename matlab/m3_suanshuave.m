function [resultImage] = m3_suanshuave(f)
%������ֵ�˲���
% 
[w,h]=size(f);
image= f(:,:);
fsize1=3;

fssize1=(fsize1-1)/2;

figure();
subplot(1,2,1);
imshow(image);
xlabel('ԭͼ��');

resultImage = image;

for x=1+fssize1:1:w-fssize1
    for y=1+fssize1:1:w-fssize1
        is=f(x-fssize1:1:x+fssize1,y-fssize1:1:y+fssize1);
        resultImage(x,y)=sum(is(:))/numel(is); 
    end
end

subplot(1,2,2);
imshow(resultImage);
xlabel('3*3������ֵ');