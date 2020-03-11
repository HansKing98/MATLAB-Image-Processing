f=imread( 'img\Fig0316.tif' );

imshow(f)
figure;
imhist(f);
ylim('auto')

% 直方图均衡化（各元素均在[0,1]上）的灰度直方图。
g=histeq(f,256);
figure;
imshow(g);
figure;
imhist(g)
ylim('auto')