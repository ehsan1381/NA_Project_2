% Compute numerical value of theta acccording to forward divided difference formula
function product = ThetaProduct(point, lastPoint, stepSize, n)
  if n < 0
    error 'Argument n should be positive'
  elseif n == 0
   product = 1;

  else
    theta = (point - lastPoint) / stepSize;
    product = prod(theta + [0:n-1]);
  end % if
end % function
