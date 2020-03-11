f=imread( 'img\Fig0305.tif' );

% 把图像数据类型转换为无符号八位整型（八比特图像）。
g = im2uint8(mat2gray(log(1 + double(f))));

g2 = intrans(f,'stretch',mean2(im2double(f)),0.9);

imshow(f);
figure;
imshow(g);