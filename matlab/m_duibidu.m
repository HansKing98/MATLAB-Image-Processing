f=imread( 'img\Fig0305.tif' );

% ��ͼ����������ת��Ϊ�޷��Ű�λ���ͣ��˱���ͼ�񣩡�
g = im2uint8(mat2gray(log(1 + double(f))));

g2 = intrans(f,'stretch',mean2(im2double(f)),0.9);

imshow(f);
figure;
imshow(g);