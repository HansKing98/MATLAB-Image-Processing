f=imread( 'img\Fig0316.tif' );

% 线性空间滤波器
w=fspecial('laplacian', 0);

g1=imfilter(f, w, 'replicate');
f2=im2double(f);
g2=imfilter(f2, w, 'replicate');
g=f2-g2;

subplot(2,4,1)
imshow(f, [ ])

subplot(2,4,2)
imshow(g1, [ ])

subplot(2,4,3)
imshow(g2, [])

subplot(2,4,4)
imshow(g, [ ])

% 手工比较
w4=fspecial('laplacian', 0);
w8=[1 1 1; 1 -8 1; 1 1 1];
f = im2double(f);
g4 = f - imfilter(f, w4, 'replicate');
g8 = f - imfilter(f, w8, 'replicate');

subplot(2,4,7)
imshow(g4)

subplot(2,4,8)
imshow(g8)