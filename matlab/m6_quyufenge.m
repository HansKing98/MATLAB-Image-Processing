%% ʹ���������ͺϲ���ͼ��ָ�
I=imread( 'img\Fig1017.tif' );
figure;
subplot(3, 4, 1),imshow(I);
title('����ָ�ԭʼͼ��');

g1=splitmerge(I,32,@predicate);%2����ָ���������С�Ŀ�
subplot(3, 4, 2),imshow(g1);
title('mindimΪ32ʱ�ķָ�ͼ��');

g2=splitmerge(I,8,@predicate);
subplot(3, 4, 3),imshow(g2);
title('mindimΪ8ʱ�ķָ�ͼ��');

g3=splitmerge(I,2,@predicate);
subplot(3, 4, 4),imshow(g3);
title('mindimΪ2ʱ�ķָ�ͼ��');


se=ones(2,2);
gdilate=imdilate(g1,se);
subplot(3, 4, 6);imshow(gdilate);
title('����2���ͼ')

gdilate=imdilate(g2,se);
subplot(3, 4, 7);imshow(gdilate);

gdilate=imdilate(g3,se);
subplot(3, 4, 8);imshow(gdilate);

se=ones(32,32);
gdilate=imdilate(g1,se);
subplot(3, 4, 10);imshow(gdilate);
title('����32���ͼ')

gdilate=imdilate(g2,se);
subplot(3, 4, 11);imshow(gdilate);

gdilate=imdilate(g3,se);
subplot(3, 4, 12);imshow(gdilate);

