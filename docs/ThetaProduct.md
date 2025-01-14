# Description
The representation of Newton divided difference polynomial interpolation for equidistant points
has variable $\theta$ as short form for $\frac{x - x_n}{h}$. In the representation each term,
except the first one, has a product of form $\theta (\theta + 1)...(\theta + n - 1)$. This program
computes these products given values $x, x_n, h, n$.

# Internals
The function has two edge cases. First is when argument $n$ is negative in which it will return an
error. Second is when $n=0$ in which the program returns 1. When $n>0$ the program simply returns
this product.
