A=imread('C:\Users\Asus\Desktop\çalýþan\sunum\perspektif\images\parapers.png');
B=rgb2gray(A);

C=double(B);


for i=1:size(C,1)-2
    for j=1:size(C,2)-2
        %Sobel mask x yönünde:
        Gx=((2*C(i+2,j+1)+C(i+2,j)+C(i+2,j+2))-(2*C(i,j+1)+C(i,j)+C(i,j+2)));
        %Sobel mask for y-yönünde:
        Gy=((2*C(i+1,j+2)+C(i,j+2)+C(i+2,j+2))-(2*C(i+1,j)+C(i,j)+C(i+2,j)));
      
        %görüntünün gradiyenti
        
        B(i,j)=sqrt(Gx.^2+Gy.^2);
      
    end
end
figure,imshow(B); title('Sobel filtresi')