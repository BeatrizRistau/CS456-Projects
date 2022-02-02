function s = scanLine4e(f, l, loc)
    
    loc = lower(loc);
    [r, c] = size(f); % get size of image

    % checking if l does not go out of bounds
    if l <= 0
        fprintf('l should be an integrer greater than 0');
    end

    if strcmpi(loc, 'row') && l > r
        fprintf("row exceeds.\n");
    elseif strcmpi(loc, 'col') && l > c
        fprintf("column exceeds.\n");
    end

    % get the scan line
    if strcmpi(loc, 'row')
        s = f(l, :); % pick all columns
    elseif strcmpi(loc, 'col') 
        s = f(:, l); % pick all rows of the column
    else
        fprintf('Parameter loc must be specified as ''row'' or ''col''');
    end
end