clc;
x=imread('C:\Users\Asus\Desktop\bitir\1.png');
x=rgb2gray(x);
x=double(x);
tot=0;
[a,b]=size(x);
y=zeros(a,b);
for i=1:a
    for j=1:b
        y(i,j)=0;
    end
end
for i=1:a
    for j=1:b
        tot=tot+x(i,j);
    end
end
thr=tot/(a*b);
for i=1:a
    for j=1:b
        if x(i,j) > thr
            y(i,j)=0;
        else
            y(i,j)=1;
        end
    end
end

figure,imshow(y); title('esiklenmis');
