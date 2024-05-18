% Đọc ảnh gốc
img_original = imread('ten_anh.jpg');

% Giảm độ phân giải lên 3 lần
img_downsampled = imresize(img_original, 1/3);

% Kích thước ảnh đầu ra
output_size = size(img_original);

% Thực hiện nội suy để tạo lại ảnh có độ phân giải cũ
img_resampled_nearest = imresize(img_downsampled, output_size, 'nearest');
img_resampled_bilinear = imresize(img_downsampled, output_size, 'bilinear');
img_resampled_bicubic = imresize(img_downsampled, output_size, 'bicubic');
img_resampled_lanczos = imresize(img_downsampled, output_size, 'lanczos');

% Hiển thị kết quả
figure;
subplot(2, 3, 1);
imshow(img_original);
title('Ảnh gốc');

subplot(2, 3, 2);
imshow(img_downsampled);
title('Ảnh giảm độ phân giải');

subplot(2, 3, 4);
imshow(img_resampled_nearest);
title('Nội suy (Nearest)');

subplot(2, 3, 5);
imshow(img_resampled_bilinear);
title('Nội suy (Bilinear)');

subplot(2, 3, 6);
imshow(img_resampled_bicubic);
title('Nội suy (Bicubic)');

subplot(2, 3, 3);
imshow(img_resampled_lanczos);
title('Nội suy (Lanczos)');