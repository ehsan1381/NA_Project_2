# Description
This is an implementation of the Newton-Raphson root finding method. It returns
an approximation to the root of the function.
This function takes 4 arguments and returns one output. Arguments are as follows:
    1. Function             This is a function handle. Mathematically it should be
       defined as $f:R \mapsto R$. For example in matlab `f=@(x)(x^.2)`.
    2. FunctionDerivative   This is the derivative of the first function. This
       argument is part of the Newton-Raphson method. It must be a function
       handle. For example `df = @(x)(2*x)`
    3. Tolerance            This is a real value passed in as type double. It is
       used as a halting condition for the algorithm. If the absolute value of
       the function passed in the first argument at approximated root is less
       than or equal to this value, the program will exit, returning the
       approximated root.
    4. Init                 This argument is a first approximation to the root.
       By the definition of the Newton-Raphson method this value should be as
       close as possible to the root for the convergence to be guaranteed.
       Otherwise the program will not function as intended and even
       unpredictably.

# Internals
The program is very straightforward. A loop counter and a bound is used to prevent infinite loops.
This bound could be assumed to be 8 or 10 because of the rate of convergence of Newton-Raphson
method in case the root is simple. But to prevent complications we will not assume that and simply
set 50 as a bound.
After initializing the necessary values the program enters a loop in which at each step it computes
the new approximation to the root, computes the function value at that approximation. The program
exits returning the approximation when the loop limit or the required precision is reached or
passed.
