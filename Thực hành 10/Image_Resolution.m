clc; close all; clear all;
%% Load ảnh gốc
original_image = imread('ngc6543a.jpg');
figure;
subplot(1, 3, 1);
imshow(original_image);
title('Ảnh gốc');

%% Giảm độ phân giải ba lần
low_res_image = imresize(original_image, 1/3);
subplot(1,3,2)
imshow(low_res_image)
title('Lower Resolution')

%% Sử dụng nội suy interp2 để tái tạo ảnh gốc
% Tạo lưới mặt phẳng tương ứng với kích thước của ảnh giảm độ phân giải
size_lr = size(low_res_image);
[X, Y] = meshgrid(1-size_lr(2)/2:size_lr(2)-size_lr(2)/2, 1-size_lr(1)/2:size_lr(1)-size_lr(1)/2);

% Tạo lưới mặt phẳng tương ứng với kích thước của ảnh gốc
size_original = size(original_image);
[Xq, Yq] = meshgrid(linspace(1-size_lr(2)/2,size_lr(2)-size_lr(2)/2,size_original(2))...
    , linspace(1-size_lr(1)/2,size_lr(1)-size_lr(1)/2,size_original(1)));

% Nội suy cho từng kênh màu riêng lẻ
reconstructed_image = zeros(size_original(1), size_original(2), 3);
for i = 1:3
    reconstructed_image(:,:,i) = interp2(X, Y, double(low_res_image(:,:,i)), Xq, Yq, 'spline');
end

reconstructed_image = uint8(reconstructed_image);

subplot(1, 3, 3);
imshow(reconstructed_image);
title('Ảnh sau sau khi khôi phục');
