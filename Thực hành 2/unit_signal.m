function u = unit_signal(n, n0)
    % Khởi tạo đầu ra là một ma trận zero với kích thước như n
    u = zeros(size(n));
    
    % Đặt các giá trị bằng 1 từ chỉ số n0 trở đi
    u(n >= n0) = 1;
end