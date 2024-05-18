% Đọc ảnh RGB
img_rgb = imread('peppers.jpg'  );

% Chuyển đổi sang ảnh xám bằng rgb2gray
img_gray_rgb2gray = rgb2gray(img_rgb);

% Chuyển đổi sang ảnh xám bằng mean
img_gray_mean = mean(img_rgb, 3);

% Chuyển đổi sang ảnh xám bằng luminance
img_gray_luminance = 0.2989 * img_rgb(:,:,1) + 0.5870 * img_rgb(:,:,2) + 0.1140 * img_rgb(:,:,3);

% Hiển thị ảnh gốc và ảnh xám
figure;
subplot(2, 2, 1);
imshow(img_rgb);
title('Ảnh RGB');

subplot(2, 2, 2);
imshow(img_gray_rgb2gray);
title('Ảnh xám (rgb2gray)');

subplot(2, 2, 3);
imshow(uint8(img_gray_mean));
title('Ảnh xám (mean)');

subplot(2, 2, 4);
imshow(uint8(img_gray_luminance));
title('Ảnh xám (luminance)');