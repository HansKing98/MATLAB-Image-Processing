f=imread( 'img\Fig0405.tif' );
imshow(f, [])

[M, N] = size(f);
F = fft2(f);
sig = 10;
H = lpfilter('gaussian', M, N, sig);
G = H.*F;
g = real(ifft2(G));
figure;
imshow(g, [])

PQ = paddedsize(size(f));
Fp = fft2(f,PQ(1), PQ(2));
Hp = lpfilter('gaussian', PQ(1), PQ(2),2*sig);
Gp = Hp.*Fp;
gp = real(ifft2(Gp));
gpc = gp(1:size(f,1), 1:size(f,2));
figure;
imshow(gp, [])

h = fspecial('gaussian', 15, 7);
gs = imfilter(f, h);
figure;
imshow(gs, [])

