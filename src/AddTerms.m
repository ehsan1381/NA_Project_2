% function to take coefficient and polynomial of the next term and add it
% to previous sum

function [ Sum ] = AddTerms(Polynomial, Coefficient, Sum)
  [~, SumDegree] = size(Sum);
  [~, PolyDegree] = size(Polynomial);

  TempPolynomial = zeros([1, PolyDegree]);
  TempPolynomial([2: PolyDegree]) = Sum([1:SumDegree]);

  Sum =  TempPolynomial + Coefficient * Polynomial;

end % function
