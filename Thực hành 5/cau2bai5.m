% Hệ số của đa thức tử số y(z)
b = [1, -2, 4, -3];

% Hệ số của đa thức mẫu số x(z)
a = [1, 5, -4, 2];

% Phân tích đa thức thành tích các đa thức bậc 2
[b0, B, A] = Cautrucnoitiep(b, a);

% In kết quả
disp("Hệ số khuếch đại b0: ");
disp(b0);

disp("Ma trận hệ số tử số B: ");
disp(B);

disp("Ma trận hệ số mẫu số A: ");
disp(A);