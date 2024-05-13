function r = rectangular_pulse(n, n0, width)
    % Khởi tạo đầu ra là một ma trận zero với kích thước như n
    r = zeros(size(n));
    
    % Đặt các giá trị bằng 1 trong khoảng từ n0 đến n0 + width - 1
    r(n >= n0 & n < n0 + width) = 1;
end