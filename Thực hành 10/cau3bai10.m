% Đọc ảnh RGB
img_rgb = imread('peppers.jpg');

% Chuyển đổi sang không gian màu HSV
img_hsv = rgb2hsv(img_rgb);

% Chuyển đổi sang không gian màu YCrCb
img_ycbcr = rgb2ycbcr(img_rgb);

% Hiển thị kết quả
figure;
subplot(2, 2, 1);
imshow(img_rgb);
title('Ảnh RGB');

subplot(2, 2, 2);
imshow(img_hsv);
title('Ảnh HSV');

subplot(2, 2, 3);
imshow(img_ycbcr);
title('Ảnh YCrCb');