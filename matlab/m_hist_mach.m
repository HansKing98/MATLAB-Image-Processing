f=imread( 'img\Fig0323.tif' );

imhist(f);
figure;
imshow(f)

% ֱ��ͼƥ��
f1=histeq(f,256);
figure;
imhist(f1);
figure;
imshow(f1)