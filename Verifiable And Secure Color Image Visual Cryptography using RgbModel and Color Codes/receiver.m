function receiver(image_1,image_2,image_3)

image_stacked=image_1 + image_2 + image_3;


figure; imshow(image_stacked); title('Secret Image');
imwrite(image_stacked,'Answer.bmp');




