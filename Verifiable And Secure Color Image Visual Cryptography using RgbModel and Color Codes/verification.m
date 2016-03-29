function verification

image_4 = imread('Verification Share.bmp');
image_4 = double(image_4);
R=image_4(:,:,1);
C=1-R;
G=image_4(:,:,2);
M=1-G;
B=image_4(:,:,3);
Y=1-B;
image_4=cat(3,C,M,Y);
figure; imshow(image_4); title('Verification Share');


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


v1 = image_1 + image_4;
figure; imshow(v1); title('Verfication 1');
imwrite(v1,'Verified 1.bmp'); 
v2 = image_2 + image_4;
figure; imshow(v2); title('Verfication 2');
imwrite(v2,'Verified 2.bmp'); 
v3 = image_3 + image_4;
figure; imshow(v3); title('Verfication 3');
imwrite(v3,'Verified 3.bmp'); 

secret = image_1 + image_2 + image_3;
figure; imshow(secret); title('Secret Image');


