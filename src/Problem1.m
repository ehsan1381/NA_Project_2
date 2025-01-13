% GLOBAL SETTINGS
POLYNOMIAL_DEGREE = 10
TOLERANCE = 1e-15;
RANGE_START = 1;
RANGE_END = 2;
DISPLAY_PRECISION = 15;

% Problem function definitions
f = @(t)((cos(t)-1)./t);
F = @(x)(integral(f, 0, x));

% For ease of further calculations
RootF = @(x)(F(x) + 0.3);

% Range [1, 2] comes form function plot
XArray = linspace(RANGE_START, RANGE_END, POLYNOMIAL_DEGREE);

% Two consecutive values, nothing important about 1 and 2
%stepSize = XArray(2) - XArray(1);
YArray = zeros([10, 1]);


for i=1:POLYNOMIAL_DEGREE
  YArray(i) = F(XArray(i));
end % for


Func = @(x)(BackwardDividedDifferenceInterpolation(XArray, YArray, x));
FuncDerivative = @(x)((cos(x) - 1)/x);

% again for code readability
RootFunc = @(x)(Func(x) + 0.3);

% Approximate to an extent first with bisection method
% This is done to acquire an initial approximation to pass
% in to Newton-Raphson method
Interpolated = Bisection(RootFunc, RANGE_START, RANGE_END, 1e-4);
ApproximationInterpolated = NewtonRaphson(RootFunc, FuncDerivative, TOLERANCE, Interpolated)

Direct = Bisection(RootF, RANGE_START, RANGE_END, 1e-4);
ApproximationDirect = NewtonRaphson(RootF, FuncDerivative, TOLERANCE, Direct)

RootDiff = abs(ApproximationInterpolated - ApproximationDirect);
disp(['Difference between direct and reverse interpolation is : ', num2str(RootDiff, DISPLAY_PRECISION)])

ValueDiff = abs(F(ApproximationDirect) - F(ApproximationInterpolated));
disp(['The difference in the function value at these approximations is : ' num2str(ValueDiff, DISPLAY_PRECISION)])


clear DISPLAY_PRECISION RootF XArray stepSize YArray RootFunc i
