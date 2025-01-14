# Description
This function computes the value of a function given an array of its values and a point. This task
is performed by using the backward divided difference formulation of the Newton divided difference
method for equidistant points. The first argument is array of equidistant points in the function
domain. Second is the array of function values at thos points. Third is the point in which the
interpolation is requested. All should be of type double.

# Internals
The program first takes in size of the arrays and the step size, the distant between two
consecutive points in the array of $x_i$s. Then it defines a function handle to make further
computations easier. This function handle calls the necessary functions to compute the coefficient
of each term. Since the first term in the interpolation representation as a sum is $f_n$ the
approximation value is initiated to it. The point $x_n$ is also set to a variable so that there is
no need to access the array of $x_i$s every time a term is to be computed. Then the program enters a
loop in which the terms are computed one by one and added together at each iteration.
