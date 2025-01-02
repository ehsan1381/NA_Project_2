# Description
This is a simple function. It takes on input which must be an integer value. It
should be `uint64`. If this argument is larger than 177, the program will halt
with an error returned. This is because even using double precision floating
point numbers, the value will underflow to 0. This function returns a double
type.
