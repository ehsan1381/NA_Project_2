function Approximation =  BackwardDividedDifferenceInterpolation(XArray, YArray, pointX)
  [~, Size] = size(XArray);
  stepSize = abs(XArray(2) - XArray(1));

  coefficient = @(i)(OneOverFactorial(i) * BackwardDifference(YArray, i, Size));
  Approximation = YArray(Size);
  XN = XArray(Size);

  for i=[1:Size - 1]
    Approximation = Approximation + coefficient(i) * ThetaProduct(pointX, XN, stepSize, i);
  end

