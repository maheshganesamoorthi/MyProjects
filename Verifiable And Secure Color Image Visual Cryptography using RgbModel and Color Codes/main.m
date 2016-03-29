
clc;
clear all;
close all;
sel=0;
disp('Select color Image........');
while sel==0
    [namefile,pathname]=uigetfile({'*.bmp;*.tif;*.jpg;*.fig;*.gif; *.png; *.pgm'
        'IMAGE Files (*.bmp,*.tif,*.jpg,*.gif, *.png, *.pgm)'},'Choose a Color Image');
    if namefile~=0
        naturalImage=imread(strcat(pathname,namefile));
        sel=1;
    else
        disp('Process terminated by user');
        sel=1;
    end
end


A=naturalImage;
fig=imColorSep(A);
[s1 s2 s3] = size(A);
sel=0;
disp('Select Color Logo........');
while sel==0
    [namefile,pathname]=uigetfile({'*.bmp;*.tif;*.jpg;*.fig;*.gif; *.png; *.pgm'
        'IMAGE Files (*.bmp,*.tif,*.jpg,*.gif, *.png, *.pgm)'},'Choose a Color Logo');
    if namefile~=0
        logo=imread(strcat(pathname,namefile));
        sel=1;
    else
        disp('Process terminated by user');
    end
end

logo = imresize(logo,[s1 s2],'bilinear');

logor=logo(:,:,1);
logog=logo(:,:,2);
logob=logo(:,:,3);
logor=jarvisHalftone(logor);
logog=jarvisHalftone(logog);
logob=jarvisHalftone(logob);





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Read Input Binary Secret Image
%[X, map] = imread('Red1.bmp');
%[inImg, newmap] = imapprox(X, map, 16);

inImg=imread('Red1.bmp');
%Visual Cryptography
[share1, share2, share3, vshare, share123] = VisCrypt(inImg,logor);

%Outputs
figure;imshow(share1);title('Share 1');
figure;imshow(share2);title('Share 2');
figure;imshow(share3);title('Share 3');
vshare1=vshare;
%figure;imshow(share123);title('Overlapping Share 1  2 and 3');

imwrite(vshare,'VShare1.jpg');
imwrite(share1,'Share1.jpg');
imwrite(share2,'Share2.jpg');
imwrite(share3,'Share3.jpg');
imwrite(share123,'Overlapped123.jpg');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Read Input Binary Secret Image
%[X, map] = imread('Green1.bmp');
%[inImg, newmap] = imapprox(X, map, 16);

inImg=imread('Green1.bmp');
%Visual Cryptography
[share1, share2, share3, vshare, share123] = VisCrypt(inImg,logog);

%Outputs
figure;imshow(share1);title('Share 4');
figure;imshow(share2);title('Share 5');
figure;imshow(share3);title('Share 6');
vshare2=vshare;
%figure;imshow(share123);title('Overlapping Share 4 5 and 6');


imwrite(vshare,'VShare2.jpg');
imwrite(share1,'Share4.jpg');
imwrite(share2,'Share5.jpg');
imwrite(share3,'Share6.jpg');
imwrite(share123,'Overlapped456.jpg');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Read Input Binary Secret Image
%[X, map] = imread('Blue1.bmp');
%[inImg, newmap] = imapprox(X, map, 16);

inImg=imread('Blue1.bmp');
%Visual Cryptography
[share1, share2, share3, vshare, share123] = VisCrypt(inImg,logob);

%Outputs
figure;imshow(share1);title('Share 7');
figure;imshow(share2);title('Share 8');
figure;imshow(share3);title('Share 9');
vshare3=vshare;
%figure;imshow(share123);title('Overlapping Share 7 8 and 9');


imwrite(vshare,'VShare3.jpg');
imwrite(share1,'Share7.jpg');
imwrite(share2,'Share8.jpg');
imwrite(share3,'Share9.jpg');
imwrite(share123,'Overlapped789.jpg');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
vs1 = imread('VShare1.jpg');
vs2 = imread('VShare2.jpg');
vs3 = imread('VShare3.jpg');

vshare = cat(3,vs1,vs2,vs3);
figure; imshow(vshare); title('Verification Share');
imwrite(vshare,'Verification Share.bmp');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a=imread('share1.jpg'); 
b=imread('share2.jpg'); 
c=imread('share3.jpg'); 
d=imread('share4.jpg'); 
e=imread('share5.jpg'); 
f=imread('share6.jpg'); 
g=imread('share7.jpg'); 
h=imread('share8.jpg'); 
i=imread('share9.jpg'); 

share123=cat(3,a,b,c);
share456=cat(3,d,e,f);
share789=cat(3,g,h,i);
share147=cat(3,a,d,g);
share258=cat(3,b,e,h);
share369=cat(3,c,f,i);

imwrite(share147,'Share147.bmp');

imwrite(share258,'Share258.bmp');

imwrite(share369,'Share369.bmp');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
image_1 = imread('Share147.bmp');
image_1 = double(image_1);
R=image_1(:,:,1);
C=1-R;
G=image_1(:,:,2);
M=1-G;
B=image_1(:,:,3);
Y=1-B;
image_1=cat(3,C,M,Y);
figure; imshow(image_1); title('Share147');

image_2 = imread('Share258.bmp');
image_2 = double(image_2);
R=image_2(:,:,1);
C=1-R;
G=image_2(:,:,2);
M=1-G;
B=image_2(:,:,3);
Y=1-B;
image_2=cat(3,C,M,Y);
figure; imshow(image_2); title('Share258');

image_3 = imread('Share369.bmp');
image_3 = double(image_3);
R=image_3(:,:,1);
C=1-R;
G=image_3(:,:,2);
M=1-G;
B=image_3(:,:,3);
Y=1-B;
image_3=cat(3,C,M,Y);
figure; imshow(image_3); title('Share369');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



receiver(image_1,image_2,image_3);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


verification();


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%