function hough_yuvarlak_bulma()
    RGB = imread('C:\Users\Asus\Desktop\�al��an\sunum\perspektif\images\ustyapisik.png'); % resim say�sal olarak y�klendi
    I = rgb2gray(RGB); % gri tone indirgeme.
    esik_degeri = graythresh(I); % resmin e�ik de�eri.
    bw = im2bw(I,esik_degeri); % e�ik de�erine g�re siyah beyaz.
    bw = bwareaopen(bw, 50);
    % nesnelerin elemanlar� aras�ndaki bo�luklar� birle�tirecek
    birlestirici = strel('square',3);
    bw = imdilate(bw,birlestirici);
    imshow(bw);
    Rmin = 8;
    Rmax = 30;
    % belirtilen yar� �aplarda ayd�nl�k yuvarlaklar bulunmaktad�r.
    [aydinlik_merkezi, aydinlik_yaricapi] = imfindcircles(bw,[Rmin Rmax],'ObjectPolarity','bright');
    % belirtilen yar� �aplarda karanl�k yuvarlaklar bulunmaktad�r.
    [karanlik_merkezi, karanlik_yaricapi] = imfindcircles(bw,[Rmin Rmax],'ObjectPolarity','dark')
    % bulunan ayd�nl�k ve karanl�k �ember �iziliyor.
    viscircles(aydinlik_merkezi, aydinlik_yaricapi,'EdgeColor','b');
    viscircles(karanlik_merkezi, karanlik_yaricapi,'LineStyle','-');
end