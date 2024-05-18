% Đọc ảnh từ không gian K
img_K = imread('peppers.jpg');

% Lấy thông số đệm
PQ = paddedsize(size(img_K));

% Biến đổi Fourier của hình ảnh với kỹ thuật padding
F = fft2(double(img_K), PQ(1), PQ(2));

% Thiết kế bộ lọc (ví dụ: lọc trung bình)
H = fspecial('average', size(img_K));

% Nhân ảnh được chuyển đổi với bộ lọc
G = H .* F;

% Lấy phần thực của FFT nghịch đảo
g = real(ifft2(G));

% Cắt ảnh kết quả về kích thước ban đầu
g = g(1:size(img_K, 1), 1:size(img_K, 2));

% Hiển thị ảnh kết quả
imshow(uint8(g));
title('Ảnh MRI từ không gian K');
