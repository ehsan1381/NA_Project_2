% Test parameters
Tolerance = 1e-15;


%% First 170 Cases
for i=1:170
  Approx = OneOverFactorial(i);
  Case = 1/factorial(i);
  assert(abs(Approx - Case) / Case <= Tolerance);
end % for
