
function fig = imColorSep(A)

% IMCOLORSEP    Displays the RGB decomposition of a full-color image
%
% Color image is decomposed to three images of 
% its composition colors and displaying them as 
% gray scale image with the values representing
% the color intensity
%


    % Converting data type of image array to 'uint8':
    %A = im2uint8(A);

    fig=figure; imshow(A); title('Input Color Image');
   
 img=A;

if((ndims(img)~=3) | (size(img,3)~=3))

    menu(' Input image must be RGB','OK');

else

%re=imresize(img,[256,256],'bilinear');
re=img;

%Extract Red, Green and Blue Components

    red=re(:,:,1);

    green=re(:,:,2);

    blue=re(:,:,3);



%Outputting the retrieved images.

             figure;imshow(red);title('Red Component');
             figure;imshow(green);title('Green Component');
             figure;imshow(blue);title('Blue Component');
 
            

% Halftoning using jarvis algorithm
red1=jarvisHalftone(red);
green1=jarvisHalftone(green);
blue1=jarvisHalftone(blue);

 

imwrite(red1,'Red1.bmp');
imwrite(green1,'Green1.bmp');
imwrite(blue1,'Blue1.bmp');



end

