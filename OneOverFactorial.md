# Description
This is a simple function. It takes on input which must be an integer value. It
should be `uint8`. If this argument is larger than 177, the program will halt
with an error returned. This is because when using double precision floating
point numbers, during the computation division by 178 will cause underflow to 0.
This function returns a double type.
