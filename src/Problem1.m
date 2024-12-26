% function definitions
f = @(t)((cos(t)-1)./t)
F = @(x)(integral(f, 0, x))

% a test of function
% f(5)
% F(5)

% to find a range for root
X = linspace(-2*pi, 2*pi, 1e4);
Y = f(X);
YINT = zeros([1, 1e4]);

index = 1;
for x = X
  YINT(index) = F(x);
  index = index + 1;
end % for

plot(X, Y);
hold on;
plot(X, YINT);
grid;

legend('function', 'integral');
hold off;


RootF = @(x)(F(x) + 0.3)
Bisection(RootF, 1, 2, 1e-5)
