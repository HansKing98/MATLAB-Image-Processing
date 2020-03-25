f=imread( 'img\Fig0318.tif' );
imshow(f, []);

g1=imnoise(f,'gaussian',0,0.1);
g2=imnoise(f,'salt & pepper',0.2);
g3=imnoise(g1,'salt & pepper',0.2);

m3_suanshuave(g1);
m3_suanshuave(g2);
m3_suanshuave(g3);

m3_jiheave(g1);
m3_jiheave(g2);
m3_jiheave(g3);

m3_xieboave(g1);
m3_xieboave(g2);
m3_xieboave(g3);

m3_mid(g1);
m3_mid(g2);
m3_mid(g3);

m3_max(g1);
m3_max(g2);
m3_max(g3);

m3_min(g1);
m3_min(g2);
m3_min(g3);

