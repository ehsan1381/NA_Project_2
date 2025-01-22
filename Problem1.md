# Description
This is a MATLAB script written to perform the necessary computations and follow the process of
building a solution for the posed problem.

# Walk through
We first define some necessary constants. These include the interpolation polynomial degree,
tolerance to the computed root, start and end of the range to look for the root in, and a display
precision for when the values are displayed to the user at the end of the program.
The polynomial degree is set by testing the program for a number of options and settling on this
one. It can be increased or decreased but keep in mind that the larger this number is the poorer the
performance of the code and possibly the precision. If this number is set to values like 2 or 3 the
program will not be able to produce accurate results to the requested precision. This is a
combination of error stagnation and interpolation error itself.

We then define function handles for the function under the integral and the integrator itself.
Another function called "RootF" is defined which is the function we will try to find the root for. The
root of this function will be the value $x$ for which the integral will equal, approximately, 0.3.

Then an array of $x_i$ is defined. This is the array which will be used for interpolation. Since we
do not need points more than the degree of the polynomial we use "linspace" function in MATLAB to get
equidistant points. An array of zeros is initiated in memory for values of function in points $x_i$
and then the function is evaluated at points $x_i$ and the values are stored.

We then define a function handle which when called will call the interpolator program at point $x$
and pass in the arrays created before. A function handle is also defined for derivative of function
$f$ in the problem. This is required for Newton-Raphson interpolation. Another function handle is
also defined as "RootFunc" which is similar to "RootF" but uses the interpolator instead of the function
itself.


To compute the root using Newton-Raphson method we first need an approximation close to the root. To
achieve this we use the bisection method. We use "Bisection" program with "1e-4" as tolerance. There
is not an exact reason to use "1e-4" specifically but we pass in a relatively tight tolerance so
that can be sure that the Newton-Raphson method will converge to the root.
We then call "NewtonRaphson" function to compute the root to the final requested precision.

To perform a comparison between interpolating and not interpolating we use the same "Bisection" and
"NewtonRaphson" programs to approximate the root with the function itself.

At last we clear unnecessary variables created during the process.
