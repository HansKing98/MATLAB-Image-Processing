%% 使用阈值法对灰度图像进行分割
I=imread( 'img\Fig1013.tif' );

imshow(I);

[width,height] = size(I);

%otsu algorithm
level = graythresh(I);
BW = im2bw(I,level);
figure
imshow(BW)

%全局阈值
for i= 1:width
    for j= 1:height
        if(I(i,j) < 80)
            BW1(i,j) = 0;
        else
            BW1(i,j) = 1;
        end
    end
end
figure
imshow(BW1)

%迭代求阈值
I = double(I);
T = (min(I(:))+ max(I(:)))/2;
done = false;
i=0;
while ~ done
    r1 = find(I<=T);
    r2 = find(I>T);
    Tnew = (mean(I(r1))+ mean(I(r2)))/2;
    done = abs(Tnew -T)< 1;
    T = Tnew;
    i=i+1;
end
I(r1) = 0;
I(r2) = 1;
figure;
imshow(I)

