f=imread( 'img\Fig0409.tif' );
imshow(f, [])

F = fft2(f);
S = fftshift(log(1 + abs(F)));
S = gscale(S);
figure;
imshow(S, [])

h = fspecial('sobel')';
freqz2(h);
PQ = paddedsize(size(f));
H = freqz2(h, PQ(1), PQ(2));
H1 = ifftshift(H);
imshow(abs(H), []);
figure;
imshow(abs(H1), [])

gs = imfilter(double(f), h);
gf = dftfilt(f, H1);
figure;
imshow(gs, [])
figure;
imshow(gf, [])

figure;
imshow(abs(gs), [])
figure;
imshow(abs(gf), [])

figure;
imshow(abs(gs) > 0.2*abs(max(gs(:))), [])
figure;
imshow(abs(gf) > 0.2*max(abs(gf(:))), [])

d = abs(gs - gf);
max(d(:))
min(d(:))