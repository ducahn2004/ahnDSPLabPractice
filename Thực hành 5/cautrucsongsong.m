function [Tuso, Mauso] = cautrucsongsong(a, b)
    % Số lượng hệ thống thành phần
    n = length(a);
    
    % Khởi tạo ma trận Tuso và Mauso
    Tuso = zeros(n, length(b));
    Mauso = zeros(n, length(a));
    
    for i = 1:n
        % Hệ số của đa thức tử số
        Tuso(i, :) = b * a(i);
        
        % Hệ số của đa thức mẫu số
        Mauso(i, :) = a * a(i);
    end
end