clc; close all; clear all;

fontSize = 15;

%% Đọc ảnh
rgbImage = imread('peppers.png');

%% Hiển thị ảnh màu 3 kênh R,G,B
figure
subplot(3, 2, 1);
imshow(rgbImage);
title('Color Image', 'FontSize', fontSize);

% R = rgbImage(:,:,1)
% G = rgbImage(:,:,2)
% B = rgbImage(:,:,3)
% 
% imshow(cat(3,G,R,B))

%% Chuyển đổi ảnh màu sang ảnh xám
greyImage = rgb2gray(rgbImage);
subplot(3, 2, 2);
imshow(greyImage);
title('Gray Scale Image', 'FontSize', fontSize);

%% Chuyển sang ảnh nhị phân với Otsu thresh
[counts, ~] = imhist(greyImage, 255);
T = otsuthresh(counts);
mask = imbinarize(greyImage, T);
mask = bwareaopen(mask, 3000);
mask = imfill(mask, 'holes');
mask = bwperim(mask);
mask = imdilate(mask, ones(5));
mask = imerode(mask, ones(3));
mask = imfill(mask, 'holes');
subplot(3, 2, 3);
imshow(mask);
title('Mask Image', 'FontSize', fontSize);

%% Sử dụng mặt nạ là ảnh nhị phân để lấy vùng ảnh
maskedRgbImage = bsxfun(@times, rgbImage, cast(mask, 'like', rgbImage));
subplot(3, 2, 4);
imshow(maskedRgbImage);
title('Masked RGB Image', 'FontSize', fontSize);

%% Chuyển ảnh sau khi sử dụng mặt nạ sang kiểu HSV.
hsvImage = rgb2hsv(maskedRgbImage);
hueChannel = hsvImage(:,:,1);
% Hiển thị ma trận H
subplot(3, 2, 5);
imshow(hueChannel, []);
title('Hue Channel Image', 'FontSize', fontSize);
% Hiện thị ma trận S
saturationChannel = hsvImage(:,:,2);
subplot(3, 2, 6);
imshow(saturationChannel);
title('Saturation Channel Image', 'FontSize', fontSize);