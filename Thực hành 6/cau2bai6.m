% Đọc file âm thanh vào
[x, Fs] = audioread('guitar1.wav');

% Thiết lập giá trị Gain
gain = 0.8; % Điều chỉnh giá trị này tùy thuộc vào mức độ bạn muốn tăng hoặc giảm âm thanh

% Thiết lập bộ trễ
delayAmount = 4000; % Điều chỉnh giá trị này để thay đổi thời gian trễ, có thể sử dụng số âm hoặc dương

% Tạo một bộ trễ với giá trị đã thiết lập
delayLine = dsp.Delay('Length', delayAmount, 'MaximumDelay', delayAmount);

% Áp dụng Gain vào tín hiệu
y = gain * x;

% Áp dụng bộ trễ vào tín hiệu đã điều chỉnh Gain
y_delayed = step(delayLine, y);

% Tổng hợp tín hiệu gốc và tín hiệu đã trễ
output = y + y_delayed;

% Phát âm thanh thu được
sound(output, Fs);