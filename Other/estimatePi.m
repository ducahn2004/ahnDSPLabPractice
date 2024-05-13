clc;
% Số điểm ngẫu nhiên cần tạo
num_points = 1000000;
% Số điểm bên trong hình tròn 
count_inside = 0;

% Tạo một điểm bất kỳ và kiểm tra nếu nó nằm ngoài góc 1/4
for i = 1:num_points
    % Tạo toạ độ ngẫu nhiên trong hình vuông [-1, 1] x [-1, 1]
    x = -1 + 2 * rand();
    y = -1 + 2 * rand();
    
    % Kiểm tra nếu nó nằm trong góc phần tư của hình tròn
    if x^2 + y^2 <= 1
        count_inside = count_inside + 1;
    end
end

% Ước tính Pi bằng cách sử dụng tỷ lệ số điểm bên trong vòng tròn phần tư
estimated_pi = 4 * count_inside / num_points;

% Hiển thị kết quả
fprintf('Estimated value of Pi: %.8f\n', estimated_pi);
