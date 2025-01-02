fun = @(x)(x.^2)
h = 0.1
x = linspace(-1, 1, 2/h + 1);
y = fun(x);

[~, ysize] = size(y)

coeff = @(n)(OneOverFactorial(n) * BackwardDifference(y, n, ysize));

sum = y(ysize);
polynom = 1/h * [1, -y(ysize)]
for i = ysize
  sum = AddTerms(polynom, coeff(i), sum);
  polynom = ThetaProduct(polynom, x, h);
end % for
