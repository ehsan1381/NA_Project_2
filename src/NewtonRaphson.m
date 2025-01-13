% PSEUODO CODE ( based on Numerical Analysis - Reza Mokhtari)
%   INPUT f, f', e, x
%   OUTPUT x for which |f(x)| < e
%   1. let n=0
%   2. x = x - f(x)/f'(x)
%   3. if |f(x)|<e print x and stop
%   4. return to step 2


function [ Approximation ] = NewtonRaphson(Function, FunctionDerivative, Tolerance, Init)
  LoopCounter = 1;
  LOOPLIMIT = 1e3;

  Approximation = Init;
  while LoopCounter <= LOOPLIMIT
    if abs(Function(Approximation)) <= Tolerance
      return ;
    end % if
    %disp(Approximation);
    Approximation = Approximation - Function(Approximation)/FunctionDerivative(Approximation);
    LoopCounter = LoopCounter + 1;
  end % while
end % function
