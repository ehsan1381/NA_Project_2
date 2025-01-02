# Description
This function calculates the backwards difference operator values for given
array of values for a function, the order of the operator and the index of the
value. These are all part of the operation as it is defined as $\nablda^k f_i$.
The function takes array of values as first input. This array must be of type
double. The second argument is the order k as shown above, third is the index
shown as i above. All these values must be of double type for now.

This program defines a memoized version of itself and then recurses whenever
necessary. This implementation is chosen because the definition of the operator
is recursive. The program will return the value requested by the arguments by
performing the operation.



