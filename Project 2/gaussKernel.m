function f = gaussKernel(m,sig,K)
    % if K is not included in the function call, then it should be default
    % value of 1
    if nargin == 2
        K = 1;
    end

    % creating kernel matrix
    kernel = zeros(m, m);
    x = 0;
    range = floor((m-1)/2);

    % find coefficients within  range
    for i = -range:range
        x = x + 1;
        y = 0;
        for j = -range:range
            y= y + 1;
            kernel(x,y) = K * exp(-(i^2+j^2)/(2*sig^2));
        end
    end
    % need to normalize so the the sum of coefficients is 1
    f = kernel/(sum(kernel(:)));
end
