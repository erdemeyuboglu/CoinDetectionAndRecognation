function hough_yuvarlak_bulma()
    RGB = imread('C:\Users\Asus\Desktop\çalýþan\sunum\perspektif\images\ustyapisik.png'); % resim sayýsal olarak yüklendi
    I = rgb2gray(RGB); % gri tone indirgeme.
    esik_degeri = graythresh(I); % resmin eþik deðeri.
    bw = im2bw(I,esik_degeri); % eþik deðerine göre siyah beyaz.
    bw = bwareaopen(bw, 50);
    % nesnelerin elemanlarý arasýndaki boþluklarý birleþtirecek
    birlestirici = strel('square',3);
    bw = imdilate(bw,birlestirici);
    imshow(bw);
    Rmin = 8;
    Rmax = 30;
    % belirtilen yarý çaplarda aydýnlýk yuvarlaklar bulunmaktadýr.
    [aydinlik_merkezi, aydinlik_yaricapi] = imfindcircles(bw,[Rmin Rmax],'ObjectPolarity','bright');
    % belirtilen yarý çaplarda karanlýk yuvarlaklar bulunmaktadýr.
    [karanlik_merkezi, karanlik_yaricapi] = imfindcircles(bw,[Rmin Rmax],'ObjectPolarity','dark')
    % bulunan aydýnlýk ve karanlýk çember çiziliyor.
    viscircles(aydinlik_merkezi, aydinlik_yaricapi,'EdgeColor','b');
    viscircles(karanlik_merkezi, karanlik_yaricapi,'LineStyle','-');
end