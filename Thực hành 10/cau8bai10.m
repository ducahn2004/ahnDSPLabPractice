% Đọc ảnh
image = imread('peppers.jpg'); % Thay đổi 'your_image.jpg' thành đường dẫn của ảnh của bạn

% Chuyển ảnh sang ảnh grayscale nếu cần
if size(image, 3) == 3
    image = rgb2gray(image);
end

% Chuyển ảnh thành double
image = im2double(image);

% Kích thước ảnh
[M, N] = size(image);

% Thiết lập thông số bộ lọc
D0 = 30; % Độ tần số cắt

% Tạo bộ lọc thông thấp
H = lowpassfilter(M, N, D0);

% Áp dụng bộ lọc Fourier
F = fft2(image);
G = F .* H;

% Lọc ngược Fourier
filtered_image = ifft2(G);

% Hiển thị ảnh gốc và ảnh đã lọc
figure;
subplot(1, 2, 1);
imshow(image);
title('Ảnh gốc');
subplot(1, 2, 2);
imshow(filtered_image);
title('Ảnh đã lọc');
