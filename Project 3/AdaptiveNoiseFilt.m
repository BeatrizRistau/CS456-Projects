% Name: Beatriz Ristau
% Course: CS 456
% Professor: Dr. Rai
% Date: 11/06/2021
%
% Program Description: program that creates Adaptive Local noise reduction
% filter manually. 

% function to remove the noise from a given image
function result = AdaptiveNoiseFilt(g, m, n, nvar)
    % m = 7 & n = 7
    [row, col] = size(g); % get size of image
    
    % padding image using 'replicate' instead of 0s
    pad_img = padarray(g, [floor(m/2), floor(n/2)], "replicate");
    
    result = zeros(row,col); % creating an array with 0s to store the result

    for i = 1:row
        for j = 1:col
	        % get local region of image
            Sxy = getSxy(pad_img, i+floor(m/2), j+floor(n/2), m, n);
            local_mean = mean2(Sxy); % getting local mean
            local_variance = var(Sxy(:)); % getting the local variance
            ratio = nvar/local_variance; % dividing noise variance by local variance from the formula
	    
            % making sure the ratio is not less than 1
            if(local_variance > nvar)
                ratio = 1;
            end
	    
            % get adaptive noise filter result
            result(i,j) = g(i,j) - ratio*(g(i,j)-local_mean);
        end
    end
end