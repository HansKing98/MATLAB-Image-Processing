f=imread( 'img\Fig0651.tif' );
%HSI彩色增强亮度
%

hsi=rgb2hsi(f);
upI =cat(3, hsi(:, :, 1), hsi(:, :, 2), hsi(:, :, 3)*2 );
upI2 = hsi2rgb(upI);

subplot(2, 2, 1), imshow(f);
subplot(2, 2, 2), imshow(hsi); 
subplot(2, 2, 3), imshow(upI2); 
subplot(2, 2, 4), imshow(upI); 