f=imread( 'img\Fig0413.tif' );
imshow(f, [])

PQ = paddedsize(size(f));
[U, V] = dftuv(PQ(1), PQ(2));
D0 = 0.05*PQ(2);
F = fft2(f, PQ(1), PQ(2));
H = exp(-(U.^2 + V.^2)/(2*(D0^2)));
g = dftfilt(f, H);
figure;
imshow(fftshift(H), [])
figure;
imshow(log(1 + abs(fftshift(H))), [])
figure;
imshow(g, [])
