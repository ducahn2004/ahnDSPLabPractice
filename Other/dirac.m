% Định nghĩa hàm Dirac
function y = dirac(n)
    y = zeros(size(n));
    y(n == 0) = 1; % Gán giá trị 1 ở vị trí n == 0
end