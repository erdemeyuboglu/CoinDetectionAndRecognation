clear all;
close all;
clc;

targetFolder = './images/';
candidateImages = {'skewed1.gif', 'trapezoid.jpg'};
candidateChoice = 1;

targetImageFile = strcat(targetFolder , char(candidateImages(candidateChoice )));
targetImageData = imread(targetImageFile);


    
if length(size(targetImageData)) == 3
	im =  double(targetImageData(:,:,2));
else
	im = double(targetImageData);
end

cs = fast_corner_detect_9(im, 30);

image(im/4)
axis image
colormap(gray)
hold on
plot(cs(:,1), cs(:,2), 'r.')

BW = im2bw (targetImageData);

[B,L,N] = bwboundaries(BW);

for k=1:length(B),
    boundary = B{k};
    
    if(k == 2)
        zoom on 
        hold on
        
        size(boundary)
       
        plot(boundary(:,2),boundary(:,1),'o');         
        
    
                
    else
     
    end
end

B{2} = fliplr (B{2});


concurrencyPoints = traceConcurrencyPoints( B{2}, cs);

plot(concurrencyPoints(:,1), concurrencyPoints(:,2), 'g')

concurrencyPoints = Get4Points (concurrencyPoints);
figure
plot(concurrencyPoints(:,1), concurrencyPoints(:,2), 'x')

title('9 point FAST corner detection on an image')


X = concurrencyPoints(:,1);
Y = concurrencyPoints(:,2);
[X Y] = sortPolyFromClockwiseStartingFromTopLeft( X, Y );

x=[1;210;210;1];
y=[1;1;210;210];


A=zeros(8,8);
A(1,:)=[X(1),Y(1),1,0,0,0,-1*X(1)*x(1),-1*Y(1)*x(1)];
A(2,:)=[0,0,0,X(1),Y(1),1,-1*X(1)*y(1),-1*Y(1)*y(1)];

A(3,:)=[X(2),Y(2),1,0,0,0,-1*X(2)*x(2),-1*Y(2)*x(2)];
A(4,:)=[0,0,0,X(2),Y(2),1,-1*X(2)*y(2),-1*Y(2)*y(2)];

A(5,:)=[X(3),Y(3),1,0,0,0,-1*X(3)*x(3),-1*Y(3)*x(3)];
A(6,:)=[0,0,0,X(3),Y(3),1,-1*X(3)*y(3),-1*Y(3)*y(3)];

A(7,:)=[X(4),Y(4),1,0,0,0,-1*X(4)*x(4),-1*Y(4)*x(4)];
A(8,:)=[0,0,0,X(4),Y(4),1,-1*X(4)*y(4),-1*Y(4)*y(4)];

v=[x(1);y(1);x(2);y(2);x(3);y(3);x(4);y(4)];

u=A\v;


U=reshape([u;1],3,3)';

w=U*[X';Y';ones(1,4)];
w=w./(ones(3,1)*w(3,:));


T=maketform('projective',U');


P2=imtransform(targetImageData, T,'XData',[1 210],'YData',[1 210]);


figure
imshow(P2)

