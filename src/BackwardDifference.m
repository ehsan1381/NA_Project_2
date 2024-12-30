function NablaKFi = BackwardDifference(FArray, Order, Index)
  if Order == 1
    NablaKFi = FArray(Index) - FArray(Index - 1);
  else
    NablaKFi = BackwardDifference(FArray, Order - 1, Index) - BackwardDifference(FArray, Order - 1, Index - 1);
  end
end % function
