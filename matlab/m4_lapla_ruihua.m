f=imread( 'img\Fig0638.tif' );
%����������˹(Laplacian)���Ӳ�ɫͼ���񻯴���
%

lapask=[1 1 1; 1 -8 1; 1 1 1];
fen=imsubtract(f, imfilter(f, lapask, 'replicate'));
subplot(1, 3, 1), imshow(f);
subplot(1, 3, 2), imshow(fen); 
subplot(1, 3, 3), imshow(imfilter(f, lapask, 'replicate')); 