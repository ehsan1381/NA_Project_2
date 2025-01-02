# Description
This is an implementation of the Newton-Raphson root finding method. It returns
an approximation to the root of the function.
This function takes 4 arguments and returns one. Arguments are as follows:
    1. Function             This is a function handle type. Mathematically it should be
       defined as $f:R \mapsto R$. For example in matlab `f=@(x)(x^.2)`.
    2. FunctionDerivative   This is the derivative of the first function. This
       argument is part of the newton-raphson method. It must be a function
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


# TASKS
- [ ] See if you can implement a bound on number of iterations better than a
  constant value.
    Although the error bound is only to prevent infinite loops in the worse
    conditions, it could be used to make program more reliable. An error bound
    is already available for this method using the fixed-point theorem, but that
    requires a bound for the derivative in an interval that the theorem holds.
    These could not be reliably calculated with a simple program.
    I could make this an optional argument so that user can provide that bound
    if available.
