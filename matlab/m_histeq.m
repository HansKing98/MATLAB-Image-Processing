f=imread( 'img\Fig0316.tif' );

imshow(f)
figure;
imhist(f);
ylim('auto')

% ֱ��ͼ���⻯����Ԫ�ؾ���[0,1]�ϣ��ĻҶ�ֱ��ͼ��
g=histeq(f,256);
figure;
imshow(g);
figure;
imhist(g)
ylim('auto')