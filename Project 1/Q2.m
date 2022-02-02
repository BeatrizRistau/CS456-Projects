% Name: Beatriz Ristau
% Course: CS 456
% Professor: Dr. Rai
% Date: 9/21/2021
%
% Program Description: Write a function, s=scanLine4e(f,l,loc). The output s is a vector 
% containing the pixel values along the specified row or column in f. In a m file named Q2.m,
% read the image .rose1024.tif . Get a horizontal scan line in the middle of the image and plot 
% the scan line using matlab plot function. 

% read image
img = imread("rose1024.tif");
[r, c] = size(img); % getting row and column size of image

% get mid point of image 
mid = floor(r/2) + 1;
fprintf("%d\n", mid);

% call the scanline
s = scanLine4e(img, mid, 'row');

% plot horizontal line
figure, plot(s);
