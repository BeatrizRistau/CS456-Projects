% Name: Beatriz Ristau
% Course: CS 456
% Professor: Dr. Rai
% Date: 11/06/2021
%
% Program Description: program that creates Adaptive Local noise reduction
% filter manually.

% read original image and display it
original_img = imread('cktboard-controller.tif');
subplot(1,3,1); imshow(original_img); title('Original Image');

corrupted_img = im2double(imread("circuitboard_gaussian_corrupted.tif"));
subplot(1,3,2); imshow(corrupted_img); title("Corrupted Image");

% noise variance
noise_variance = 0.05;

% adaptive local noise filter
final_img = AdaptiveNoiseFilt(corrupted_img, 7, 7, noise_variance);
subplot(1,3,3); imshow(final_img); title("Adaptive Local Noise Filter Applied on Image");

