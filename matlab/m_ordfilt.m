f=imread( 'img\Fig0318.tif' );

% 非线性空间滤波器
fn=imnoise(f, 'salt & pepper', 0.2);
gm=medfilt2(fn);
gms=medfilt2(fn, 'symmetric');

subplot(2,2,1)
imshow(f, [ ])

subplot(2,2,2)
imshow(fn, [ ])

subplot(2,2,3)
imshow(gm, [])

subplot(2,2,4)
imshow(gms, [ ])
