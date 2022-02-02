% Name: Beatriz Ristau
% Course: CS 456
% Professor: Dr. Rai
% Date: 9/21/2021
%
% Program Description: Program that gets rows and columns values as well as
% the max and min intensity of the image, and gets the complement of the
% image.

% read and display image on the first quadrant with title
myImg = imread('lenna-RGB.tif'); 
subplot(2,2,1);
imshow(myImg);
title("Original Image");

% converting image to grayscale and display it
imgGray = rgb2gray(myImg);
subplot(2,2,2);
imshow(imgGray);
title("Image in Grayscale");

% saving image as "lenna-Grayscale.tif"
imwrite(imgGray,"lenna-Grayscale.tif");

% get rows and columns sizes of image
[row, col] = size(imgGray);
% display row and col on the Command Window
fprintf("row: %d\ncol: %d\n", row, col);

% get min and max intensity from the image
minIntensity = min(imgGray(:));
maxIntensity = max(imgGray(:));
% display min and max intensity on the Command Window
fprintf("Minimum Intensity of Image: %d\n", minIntensity);
fprintf("Maximum Intensity of Image: %d\n", maxIntensity);

% create a new matrix for the modified image
imgComplement = zeros(size(imgGray));

% changing the intensity to its complement
for i=1:row % iterating through rows
    for j=1:col % iterating through cols
        pixelIntensity = imgGray(i,j); % get the intensity at i,j
        imgComplement(i,j) = 255 - pixelIntensity;
    end
end

% display Grayscale complement image
subplot(2,2,3);
imshow(imgComplement, []);
title("Grayscale Complement Image");

