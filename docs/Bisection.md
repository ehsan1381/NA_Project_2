# INSERT TITLE
This file is implementation of the bisection algorithm. It takes in f as a
function handle object. This function must be a $f:R \mapsto R$. Otherwise the
program will fail. The second and thrid arguments are start and end of the range.
This range is an essential part of bisection algorithm. The fourth and last
argument this function takes is the tolerance. This argument is used in the
following halting condition $f(x) \le \epsilon$ where $\epsilon$ is the
tolerance passed as argument and x is the approximation to the root. If $x$
satisfies this condition the program halts. This is an argument to control the
precision of the approximation returned.
The function will return the approximation to the root.

# INTERNALS
The error bound for bisection method has long been found. It is used to see if
the program will be able to return accurate results given tolerance argument. If
tolerance is less than or equal to the system epsilon then the program will
return the meesage 'The bisection method will not be able to produce results
accurate to ' followed by the tolerance value given to the function. The program
will exit after this message because the algorithm will not be able to compute
approximations to that degree of precision.
This error bound is also used to calculate an upper bound for the number of
steps required. If the program reaches this number of iterations without
satisfying any other halting conditions, the program will halt and return that
last approximation. However this rarely takes place.
Other halting conditions contain checking if the startor end of the interval
on which the algorithm is working are actual roots.



# TASKS
If time allows:
    - The implemention contains many unnecessary checks and some that even do
      not make sense. I have to redo this program to an extent.
