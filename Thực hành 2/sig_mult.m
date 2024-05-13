% sig_mult.m

function result = sig_mult(signal1, signal2)
    % Kiểm tra kích thước của hai tín hiệu
    if numel(signal1) ~= numel(signal2)
        error('Kích thước của hai tín hiệu không khớp.');
    end
    
    % Kiểm tra liệu tín hiệu là liên tục hay rời rạc
    if isvector(signal1) && isvector(signal2)
        % Hai tín hiệu liên tục
        result = signal1 .* signal2;  % Phép nhân vô hướng
    elseif ismatrix(signal1) && ismatrix(signal2)
        % Hai tín hiệu rời rạc
        result = signal1 .* signal2;  % Phép nhân vô hướng
    else
        error('Hai tín hiệu không hợp lệ.');
    end
end