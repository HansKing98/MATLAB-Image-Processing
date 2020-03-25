function [resultImage] = m3_xieboave(f)
%Ð³²¨¾ùÖµÂË²¨Æ÷
% 
[w,h]=size(f);
image= f(:,:);
fsize1=3;

fssize1=(fsize1-1)/2;

figure();
subplot(1,2,1);
imshow(image);
xlabel('Ô­Í¼Ïñ');

resultImage = image;

for x=1+fssize1:1:w-fssize1
    for y=1+fssize1:1:w-fssize1
        is=f(x-fssize1:1:x+fssize1,y-fssize1:1:y+fssize1);
        is=1./is;
        resultImage(x,y)=numel(is)/sum(is(:)); 

    end
end


subplot(1,2,2);
imshow(resultImage);
xlabel('3*3Ð³²¨¾ùÖµ');
