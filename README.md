# Description
This repository aims to solve a simple root finding problem posed as assignment during a numerical
analysis course. The problem is as follows:
- Using inverse interpolation and numerical root finding methods, write a program to find the value
  that satisfies the following equation. For the task of inverse interpolation and root finding, use
  any of the following pair of methods. In the end compare inverse interpolation versus using
  function definition itself for root finding.
  $\int_0^x{\frac{cos(t) - t}{t}} = -0.3$

# Methods
To solve this problem we take two approaches. In the first we let $f(x)=\int_0^x{\frac{cos(t)-t}{t}}$
and use this function definition for root finding. In the second we use Newton backwards divided
difference method to interpolate this function and use that interpolation polynomial to approximate
the root.
For root finding in both approaches we first use bisection method to get an approximation and use
that as initial input to Newton-Raphson method.


# Usage
To run this program simply clone this repository, move to "src/" directory and execute "Problem1.m"
file from MATLAB console. This file is a script which will run the program for some given default
inputs. These inputs can be changed by editing this file. They include interpolator degree,
tolerance which represents the maximum absolute error the program tries to reach and a few more.
Note that the program tries to reach that tolerance value but sometimes might not. These scenarios
may happen when polynomial degree is set lower than necessary to reach a given tolerance. In order
to make sure the tolerance is reached setting degree to 10 will possibly work for all tolerances.
Note that this issue is not just because of the degree. Different types of errors also arise in
different places of the program. These errors could add up and render the root finding algorithms
unable to reach the requested tolerance. Since this issue was anticipated from the beginning all
loops have counters to prevent them from iterating infinitely. This value is calculated for the
bisection program using its error theorem but is simply set to 50 in Newton-Raphson program. The
latter can also be changed in "NewtonRaphson.m" file.
You can always get more information about how everything is done in this program by looking into the
source code.

# How is the problem solved?
We first plot the function to gain some information about the root. Using the follwoing commands in
MATLAB we can get a nice graph of the function under the integral and $f(x)$.
```
X = linspace(-2*pi, 2*pi, 1000);
f = @(t)((cos(t) - 1)./t)
F = @(x)(integral(f, 0, x))

Yf = f(X);
YF = zeros([1000, 1]);
for i=1:1000
  YF(i) = F(X(i));
end % for

plot(X, Yf);
hold on
plot(X, YF);
hold off
yline(-0.3, '-', '-0.3');
grid ;
legend('function', 'integral');

```
This graph shows that the root we are looking for exists somewhere in the range $(0, 2)$. We can
zoom in to see that it is in range $(1, 2)$ or even more to see $(1, 1.2)$.
We now use the implemented program to approximate the root.

# Results
Running the program with the default values will give the following output:
```
>> Problem1
POLYNOMIAL_DEGREE =
    10
ApproximationInterpolated =
     1.124639649611710e+00
ApproximationDirect =
     1.124639649611697e+00
Difference between direct and reverse interpolation is : 1.33226762955019e-14
The difference in the function value at these approximations is : 6.77236045021345e-15

```
To gain some additional information
```
>> FInterpolated = F(ApproximationInterpolated)
FInterpolated =
    -3.000000000000067e-01
>> FDirect = F(ApproximationDirect)
FDirect =
    -2.999999999999999e-01
>> NumDigits = abs(log10(TOLERANCE))
NumDigits =
    15
>> round(FInterpolated, NumDigits)
ans =
    -3.000000000000070e-01
>> round(FDirect, NumDigits)
ans =
    -3.000000000000000e-01
```
From this information we conclude that both methods are able to produce accurate results to at
least 13D. This means that for most use cases, the precision of the approximation is not required to
be very high both methods are viable and the choice comes down to computational power available.
The interpolated method allows for function $f$ to be approximated in points near the interpolation
points with a high degree of accuracy but simplifies the calculation from an integration to a
polynomial evaluation. On the other hand it will have less precision as seen here but the
difference, depending on the problem at hand can be very important or neglageble.


# Disclaimer
This program or any part of it is not intended to be used individually in any other scenario and is
specifically designed and implemented for this problem.
