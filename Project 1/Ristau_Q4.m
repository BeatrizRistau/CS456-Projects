% Name: Beatriz Ristau
% Course: CS 456
% Professor: Dr. Rai
% Date: 9/28/2021
% Program Description: program that performs affine transformation of
% shear (vertical)

% read image and convert to grayscale
myImg = rgb2gray(imread("lenna-RGB.tif"));

% display image in grayscale
subplot(2,2,1);
imshow(myImg);
title("Original Image");

% get the dimension of the image
[row, col] = size(myImg);

% create a new matrix for the modified image
newImg = uint8(zeros(row*2,col)); % zeros() create a matrix of double type

% transformation of shear (vertical)
Sv = 1;
shear_matrix = [1 Sv 0;
                0 1 0;
                0 0 1];

% using for loop to iterate through pixels and do find x',y'
for i=1:row*2 % iterating through rows
    for j=1: col % iterating through cols
        originalPixel = [i; j; 1];
        % this is the new x',y'
        result = shear_matrix \ originalPixel; 
        xDash = result(1); yDash = result(2);
        % checking the boundaries
        if xDash < 1 || xDash > row
             continue;
        end
        if yDash < 1 || yDash > col
             continue;
        end
        newImg(i,j) = myImg(xDash,yDash);
    end
end

% display modified image
subplot(1,2,2);
imshow(newImg);
title('Transformation Shear (Vertical) Image');
