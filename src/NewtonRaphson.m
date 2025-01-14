function [ Approximation ] = NewtonRaphson(Function, FunctionDerivative, Tolerance, Init)
  LoopCounter = 1;
  % There is absolutely no reason for this choice of bound
  % It is there to prevent infinite loops
  LOOPLIMIT = 5e1;

  Approximation = Init;
  FunctionValue = Function(Approximation);

  while (LoopCounter <= LOOPLIMIT) & (abs(FunctionValue) >= Tolerance)
    Approximation = Approximation - FunctionValue / FunctionDerivative(Approximation);
    FunctionValue = Function(Approximation);
    LoopCounter = LoopCounter + 1;
  end

end % function
