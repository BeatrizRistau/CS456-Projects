% Name: Beatriz Ristau
% Course: CS 456
% Professor: Dr. Rai
% Date: 10/16/2021
%
% Program Description: create a function named gaussKernel(m, sig, K) to
% generate a normalized Guassian lowpass kernel of size m x m. The function
% should manually create and return a gaussian kernels without using
% inbuilt matlab functions for gaussian kernels to create the filter.

% create matrix
m = zeros(512,512);
m(256,256) = 1; % unit impulse

result = gaussKernel(23,6);
% filtering image with the low pass filter that was created manually in the function
g = conv2(m, result); 
display(max(g(:)));

% display result
imshow(g, []);




