function [] = GA_test()
  GA_small_test(150);
  GA_16t6m_test(500);
  GA_17t5m_test(500);
end

function [costs] = GA_small_test(iterations)
  m = 3;
  n = 6;
  J = [2, 3, 4, 6, 2, 2];
  [costs, bestSol] = GA(J, m, iterations);
  if cost(bestSol, J, 3, 6) == 7
    disp('small test PASSED!');
  else
    disp('small test FAILED!');
  end
end

function [costs] = GA_16t6m_test(iterations)
  m = 6;
  n = 16;
  J = [58,72,79,43,16,37,7,74,97,44,39,80,65,65,39,96];
  [costs, bestSol] = GA(J, m, iterations);
  bestSolCost = cost(bestSol, J, 6, 16);
  if  bestSolCost == 154
    disp('16t6m test PASSED!');
  else
    disp('16t6m test FAILED!');
    disp(bestSolCost);
  end
end

function [costs] = GA_17t5m_test(iterations)
  m = 5;
  n = 17;
  J = [50,22,13,64,43,70,53,55,95,83,54,56,60,77,28,24,25];
  [costs, bestSol] = GA(J, m, iterations);
  bestSolCost = cost(bestSol, J, 6, 16);
  if  bestSolCost == 176
    disp('17t5m test PASSED!');
  else
    disp('17t5m test FAILED!');
    disp(bestSolCost);
  end
end
