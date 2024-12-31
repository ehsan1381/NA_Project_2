function NextProduct = ThetaProduct(LastProduct, XArray, StepSize)
  persistent Index;
  if isempty(Index)
    Index = 1;
  end


  [ ~, Degree ] = size(LastProduct);
  [ ~, Length ] = size(XArray);

  NextProduct = zeros([1, Degree+1]);
  NextProduct(1:Degree) = LastProduct(1:Degree);

  TempPoly = zeros([1, Degree+1]);
  TempPoly(2:Degree+1) = LastProduct(1:Degree);

  TempPoly = XArray(Length-Index) * TempPoly;

  NextProduct = 1/(StepSize ^ (Index+1)) * (NextProduct - TempPoly);
end % function


