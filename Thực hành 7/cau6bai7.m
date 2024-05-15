% Thông số đầu vào
wp = 0.6*pi;
ws = 0.4*pi;
Ap = 0.5;
As = 45;

% Thiết kế bộ lọc FIR sử dụng cửa sổ Hamming
[N, fo, ao, w] = firpmord([wp, ws], [1, 0], [10^(-Ap/20), 10^(-As/20)]);
h = firpm(N, fo, ao, w);

% Vẽ đáp ứng tần số của bộ lọc
freqz(h, 1, 1024, 2*pi);

% Lưu bộ lọc vào file
dlmwrite('filter_coefficients.txt', h, 'delimiter', '\n');