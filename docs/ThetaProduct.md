# Description
This function is used to compute the product
$\theta (\theta + 1) (\theta + 2)...(\theta + n - 1)$ in the formula for
backwards newton polynomial interpolation.
It will take the last product which must be a polynomial array in matlab as the
first argument, array of X values according to the problem as the second and
step size or the difference between two consecutive points in array of the
second argument as the third. It will return a polynomial which is the product
of the first argument with $\theta + i$ where theta is the index. This index is
tracked internally in the program.
This program is not intended to be called directly and should only be accessed
by the parent program which computes the polynomial interpolation completely.
