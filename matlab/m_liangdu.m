f=imread( 'img\Fig0304.tif' );

g = imcomplement(f);
g2 = imadjust(f, [0.5 0.75], [0 1]);
% ����ͼ��low_in��high_in�ĻҶȼ�ӳ�䵽���ͼ��low_out,high_out֮�䡣
g3 = imadjust(f,[0.25,0.75],[0,1]);

imshow(f)
figure,
imshow(g)
figure,
imshow(g2)
figure,
imshow(g3)