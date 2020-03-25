f=checkerboard(8);
imshow(f, []);

PSF = fspecial ('motion', 7, 45);
gb = imfilter(f, PSF, 'circular');
figure;
imshow(gb, []);

noise = imnoise(zeros (size(f)),'gaussian',0,0.001);
figure;
imshow(noise, []);

g = gb+noise;
figure;
imshow(g, []);

fr1 = deconvwnr(g, PSF) ;

Sn = abs (fft2(noise)) .^2;
nA = sum(Sn(:)) /prod(size (noise)) ;
Sf = abs(fft2(f)) .^2; 
fA = sum(Sf(:)) /prod(size(f)) ;
R=nA/fA;

fr2 = deconvwnr(g, PSF, R) ;

NCORR = fftshift (real (ifft2(Sn))) ;
ICORR = fftshift (real (ifft2(Sf))) ;
fr3 = deconvwnr(g, PSF, NCORR, ICORR);

figure;
imshow(fr1, []);
figure;
imshow(fr2, []);
figure;
imshow(fr3, []);
