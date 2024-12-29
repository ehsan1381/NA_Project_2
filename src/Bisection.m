function [ Approximation ] = Bisection(f, Start, End, TOL)


  N_0 = ceil( ( log( End - Start ) - log( TOL ) ) / log( 2 ) );
  if 2 * eps >= TOL
    disp(['The bisection method will not be able to produce results accurate to ' num2str(TOL)]);
    return;
  end

  tic;
  FA = f(Start);
  LoopCounter = 1;
  Approximation = 0;


  while LoopCounter <= N_0
    middle_point = (End-Start) / 2;
    Approximation = (Start + End) / 2;

    FP = f(Approximation);
    if FA == 0 || f(End) == 0
      if FA == 0
        Approximation = Start;

      else
        Approximation = End;
      end

      disp(Approximation);
      toc;
      return;
    end

    if (FP == 0) || abs(middle_point) < TOL
      toc;
      return ;
    end

    LoopCounter = LoopCounter + 1;

    if sign(FA) * sign(FP) > 0
      Start = Approximation;
      FA = FP;

    else
      End=Approximation;
    end

  end
  disp(["Failure after ", num2str(N_0)]);
  toc;
end
