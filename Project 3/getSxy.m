% Name: Beatriz Ristau
% Course: CS 456
% Professor: Dr. Rai
% Date: 11/06/2021

% function to get local region of the image
function result = getSxy(img, x, y, m, n)
startX = floor(m/2);
startY = floor(n/2);
result = img(x - startX:x+startX, y - startY:y+startY);
end
