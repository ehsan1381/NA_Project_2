# Description
This function calculates the backwards difference operator values for given
array of values for a function, the order of the operator and the index of the
value. These are all part of the operation as it is defined as $\nabla^k f_i$.
The function takes array of values as first input. This array must be of type
double. The second argument is the order $k$ as shown above, third is the index
shown as $i$. All these values must be of double type.

# Internals
Since $\nabla$ is defined recursively, this program is also recursive. All the cases are defined
according to the definition itself
