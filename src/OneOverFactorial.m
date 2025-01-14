% This function calculates the 1/n! at for given n

function [product] = OneOverFactorial(num)
    arguments
        num (1, 1) uint8
    end % arguments

    % the 177 limit is calculated based on 64bit
    % floating point. For numbers larger than 177
    % the division by 178 in the algorithm
    % will cause underflow to zero
    if num > 177
        error("Error : Input %s is too large to calculate 1/n!. It will cause underflow", num2str(num));
        return ;
    end

    index = 1;
    product = double(1);

    while index <= num
	    product = product / index;
	    index = index + 1;
    end % while


end % OneOverFactorial
