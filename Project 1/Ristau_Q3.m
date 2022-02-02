% Name: Beatriz Ristau
% Course: CS 456
% Professor: Dr. Rai
% Date: 9/21/2021
%
% Program Description: write a program to crop one fourth of the original
% image starting at the top left corner. The new image row and column 
% should be half of the original image row and column.

% read and display image
myImg = imread("lenna-RGB.tif");
subplot(2,2,1);
imshow(myImg);
title("Original Image");

% getting row and col of image
[row, col, colorChannel] = size(myImg);
% the new image should be half of the original image row and col
mid_row = floor(row/2) + 1;
mid_col = floor(col/2) + 1;

% create a new matrix for the cropped image
cropped_img = zeros(mid_row, mid_col, 3, 'uint8');

% crop image starting at the top left corner
for i = 1:mid_row-1
    for j = 1:mid_col-1
       % also making sure that the cropped image has the same
       % intensity as the original image
       cropped_img(i,j,1) = myImg(i,j,1);
       cropped_img(i,j,2) = myImg(i,j,2);
       cropped_img(i,j,3) = myImg(i,j,3);
    end
end

% display cropped image
subplot(2,2,2);
imshow(cropped_img);
title("Cropped Image");
