f=imread( 'img\Fig0343.tif' );

imhist(f)

figure;
bar(horz,h1)
axis([0 255 0 15000])
set(gca, 'xtick', [0:50:255])
set(gca, 'ytick', [0:2000:15000])

figure;
stem(horz,h1,'fill')
axis([0 255 0 15000])
set(gca, 'xtick', [0:50:255])
set(gca, 'ytick', [0:2000:15000])

figure;
plot(h)
axis([0 255 0 15000])
set(gca, 'xtick', [0:50:255])
set(gca, 'ytick', [0:2000:15000])