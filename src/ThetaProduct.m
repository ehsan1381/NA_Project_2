% Compute numerical value of theta acccording to forward divided difference formula
function product = ThetaProduct(x, x_n, h, n)
  if n < 0
    error 'Argument n should be positive'
  elseif n == 0
   product = 1;
  else
    theta = (x-x_n) / h;
    product = prod(theta + [0:n-1]);
  end
end % function


