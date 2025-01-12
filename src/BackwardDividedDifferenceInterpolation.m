fun = @(x)(sin(x))
h = 0.1
X = linspace(-1, 1, 2/h + 1);
Y = fun(X);
[~, ysize] = size(Y);
x = 0.9;

coeff = @(i)(OneOverFactorial(i) * BackwardDifference(Y, i, ysize));

sum = Y(ysize);
x_n = X(ysize);

for i=[1:ysize - 1]
  sum = sum + coeff(i) * ThetaProduct(x, x_n, h, i);
end

