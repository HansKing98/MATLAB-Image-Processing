%% 使用区域分离和合并的图像分割
I=imread( 'img\Fig1017.tif' );
figure;
subplot(3, 4, 1),imshow(I);
title('区域分割原始图像');

g1=splitmerge(I,32,@predicate);%2代表分割中允许最小的块
subplot(3, 4, 2),imshow(g1);
title('mindim为32时的分割图像');

g2=splitmerge(I,8,@predicate);
subplot(3, 4, 3),imshow(g2);
title('mindim为8时的分割图像');

g3=splitmerge(I,2,@predicate);
subplot(3, 4, 4),imshow(g3);
title('mindim为2时的分割图像');


se=ones(2,2);
gdilate=imdilate(g1,se);
subplot(3, 4, 6);imshow(gdilate);
title('膨胀2后的图')

gdilate=imdilate(g2,se);
subplot(3, 4, 7);imshow(gdilate);

gdilate=imdilate(g3,se);
subplot(3, 4, 8);imshow(gdilate);

se=ones(32,32);
gdilate=imdilate(g1,se);
subplot(3, 4, 10);imshow(gdilate);
title('膨胀32后的图')

gdilate=imdilate(g2,se);
subplot(3, 4, 11);imshow(gdilate);

gdilate=imdilate(g3,se);
subplot(3, 4, 12);imshow(gdilate);

