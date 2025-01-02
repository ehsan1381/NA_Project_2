function NablaKFi = BackwardDifference(FArray, Order, Index)
  persistent memoized
  if isempty(memoized)
    memoized = memoize(@BackwardDifference);

    % This is a magic number for now, no reasoning behind it
    % Find a middle ground between memory usage and performance
    % on CacheSize
    memoized.CacheSize = 50;
  end

  if Order == 1
    NablaKFi = FArray(Index) - FArray(Index - 1);
  elseif Order < 1
    error ('Order is now less than 1. Check input arguments.')
  else
    NablaKFi = memoized(FArray, Order - 1, Index) - memoized(FArray, Order - 1, Index - 1);
  end
end % function
