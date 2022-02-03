% Name: Beatriz Ristau
% Course: CS 456
% Professor: Dr. Rai
% Date: 10/16/2021
%
% Program Description: program that apply low pass filter using Gaussian
% kernel 

% read image
myImg = im2double(imread("testpattern1024.tif"));

% Question 2-a) low pass filtering using Gaussian kernel
gauss_img = imgaussfilt(myImg,30, 'FilterSize',101); 
subplot(2,2,1); imshow(gauss_img); title("Image bluried");

% getting max and min intensity
max_intensity = max(max(gauss_img(:)));
min_intensity = min(min(gauss_img(:)));

% Question 2-b) Threshold
img_complement = imcomplement(myImg); % get complement of the image
subplot(2,2,2); imshow(img_complement); title("Complement");

% performing low pass filter using gaussian kernel
img_compG = imgaussfilt(img_complement,30,'FilterSize',201);
max(max(img_compG(:)))
subplot(2,2,3); imshow(img_compG); title("Gaussian filter");

% thresholding by getting max value and setting all pixels greater than
% some value of maximum to 1
gauss_threshold = img_compG > (0.8*max(img_compG(:)));

% display final result
subplot(2,2,4); imshow(gauss_threshold); title("Final output");
sum(sum(gauss_threshold(:))) % the result image should have about 5809 white pixels


