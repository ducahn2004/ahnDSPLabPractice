function [x n] = Unit_sig(n0, n1, n2)
    n = [n1 : n2];

    x = [n >= n0];
    
end