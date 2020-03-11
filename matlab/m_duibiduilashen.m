f=imread( 'img\Fig0343.tif' );

g = intrans(f,'stretch',mean2(im2double(f)),0.9);

imshow(f);
figure;
imshow(g);