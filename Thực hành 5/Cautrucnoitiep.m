function [b0, B, A] = Cautrucnoitiep(b, a)
% Phân tích đa thức bậc cao thành tích các đa thức bậc 2

% Tìm nghiệm của đa thức H(z)
r = roots(a);

% Số lượng bộ thành phần
n = length(r);

% Hệ số khuếch đại
b0 = b(1) / prod(1 - r);

% Ma trận hệ số tử số và mẫu số
B = zeros(n, 3);
A = zeros(n, 3);

for i = 1:n
    % Hệ số tử số
    B(i, :) = [1, -r(i), r(i)^2];
    
    % Hệ số mẫu số
    A(i, :) = [1, -conj(r(i)), conj(r(i))^2];
end
end