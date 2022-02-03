% Name: Beatriz Ristau
% Course: CS 456
% Professor: Dr. Rai
% Date: 10/16/2021
%
% Program Description: 

% Question 3-a) sharpen image using Laplacian kernel
img = im2double(imread("blurry-moon.tif")); % read image
subplot(3,3,1); imshow(img); title("Blurry moon");

lap = [0 -1 0; -1 4 -1; 0 -1 0]; % create Laplacian Kernel
L = conv2(img,lap,'same');
subplot(3,3,2); imshow(L, []); title("Laplacian");

% sharpen image
sharpen_img = img + 5 * L;
subplot(3,3,3); imshow(sharpen_img, []); title("Sharpened image");

% Question 3-b) filter image with Sobel Kernel
img2 = imread('checkerboard1024-shaded.tif');
subplot(3,3,4); imshow(img2,[]); title("checkerboard");

% Sobel Kernel
gx = [-1, -2, -1; 0, 0, 0; 1, 2, 1];
gy = [-1, 0, 1; -2, 0, 2; -1, 0, 1]; 

img_gx = conv2(img2, gx, 'same'); % displays horizontal components of the edges
subplot(3,3,5); imshow(img_gx, []); title("Sobel Horizontal");
img_gy = conv2(img2, gy, 'same'); % displays vertical lines
subplot(3,3,6); imshow(img_gy, []); title("Sobel Vertical");

% Question 3-c) Getting the magnitude of the gradient of the original image
magnitude = sqrt(img_gx.^2 + img_gy.^2);
subplot(3,3,7); imshow(magnitude, []); title("Magnitude");

% Question 3-d) Filter the image with the Sobel Kernels
img_gxgy = conv2(img_gx, img_gy, 'same');
subplot(3,3,8); imshow(img_gxgy); title("Final Result");