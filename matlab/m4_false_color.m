f=imread( 'img\Fig0622.tif' );
%α��ɫ����
%

GS64=grayslice(f, 64);
subplot(1, 2, 1), imshow(f);
subplot(1, 2, 2), imshow(GS64, parula(64)); 
colorbar;