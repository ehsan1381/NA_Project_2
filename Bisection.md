# Description
This file is implementation of the bisection algorithm. It takes in f as a
function handle. This function must be a $f:R \mapsto R$. Otherwise the
program will fail. The second and thrid arguments are start and end of the range.
This range is an essential part of bisection algorithm. The fourth and last
argument is the tolerance. This argument is used in the
following halting condition $f(x) \le \epsilon$ where $\epsilon$ is the
tolerance passed as argument and $x$ is the approximation to the root. If $x$
satisfies this condition the program halts. This is an argument to control the
precision of the approximation returned.
The function will return the approximation to the root.

# Internals 
The error bound for bisection method has long been found. It is used to see if
the program will be able to return accurate results given tolerance argument. If
tolerance is less than twice the system epsilon then the program will
return an error message. The program will exit after this message because the
algorithm will not be able to compute approximations to that degree of precision.
This error bound is also used to calculate an upper bound for the number of
steps required. If the program reaches this number of iterations without
satisfying any other halting conditions, the program will halt and return that
last approximation.
Other halting conditions contain checking if the startor end of the interval
on which the algorithm is working are actual roots.


