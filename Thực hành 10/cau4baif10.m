% Đọc ảnh RGB
img_rgb = imread('peppers.jpg');

% Chuyển đổi sang ảnh nhị phân với ngưỡng 128 (sử dụng hàm im2bw)
img_binary_128 = im2bw(img_rgb, 128/255);

% Chuyển đổi sang ảnh nhị phân với ngưỡng 200 (sử dụng hàm imbinarize)
img_binary_200 = imbinarize(img_rgb, 200/255);

% Hiển thị kết quả
figure;
subplot(1, 2, 1);
imshow(img_rgb);
title('Ảnh RGB');

subplot(1, 2, 2);
imshow(img_binary_128);
title('Ảnh nhị phân (Ngưỡng 128)');

