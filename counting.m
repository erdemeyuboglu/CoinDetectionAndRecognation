clc;
clear all;
imageorj=imread('C:\Users\Asus\Desktop\çalýþan\sunum\perspektif\images\erdempers.png'); %Resmimizi okuyoruz.
figure(1),imshow(imageorj);

image=rgb2gray(imageorj); %Resmimizi gri tona çeviriyoruz. (2-Boyut)
level=graythresh(image);
bw=im2bw(image,level);
figure(2),imshow(bw);

bw=imcomplement(bw); %Resmi negatiflik ekliyoruz.
figure(3),imshow(bw)
bw=imfill(bw,'holes');%Resimde çukur diye nitelendirilen yerleri dolduruyoruz.
bw = bwareaopen(bw,30);%30px den daha az sayýda olan nesneler kaldýrýlýyor. 
figure(4),imshow(bw);

se=strel('disk',11); %Yarýçapý 11px olan disk biçiminde yapýsal element oluþturuyoruz.
bw2=imerode(bw,se); %Birlesik madeni paralarin ayrilmasi saglaniyor.
figure(5),imshow(bw2);

[B,L] = bwboundaries(bw2);  % length(B) ile para adetini ogrendik ve etiket atadik
stats = regionprops(bw2, 'Area','Centroid');
figure(6),imshow(imageorj);
    toplam = 0;
    for n=1:length(B)
        a=stats(n).Area;  % Her paranýn alanýný öðrendik. Boyutlara göre hesaplama yaptýk. 
        centroid=stats(n).Centroid;
            if a >780 &&  a < 1150
                 toplam = toplam + 1;
                 text(centroid(1),centroid(2),'1TL');
            elseif a >600 &&  a < 779
                toplam = toplam + 0.5;
                text(centroid(1),centroid(2),'50Kr');
            elseif a > 330 &&  a < 559
                toplam = toplam + 0.25;
                text(centroid(1),centroid(2),'25Kr');
            elseif a > 275 &&  a < 329
                toplam = toplam + 0.10;
                text(centroid(1),centroid(2),'10Kr');
            elseif a<274
                 toplam = toplam + 0.05;
                 text(centroid(1),centroid(2),'5Kr');
            else
                 text(centroid(1),centroid(2),'tanýmsýz')
        end
    end
    
     title(['Toplam para miktari = ',num2str(toplam),' TL'])