% Đọc ảnh gốc
img = imread('peppers.jpg');

% Hiển thị ảnh gốc
figure;
subplot(1, 2, 1);
imshow(img);
title('Ảnh gốc');

% Thay đổi thứ tự kênh màu B-R-G
img_brg = img(:, :, [3, 1, 2]); % Thay đổi thứ tự các kênh màu
subplot(1, 2, 2);
imshow(img_brg);
title('Ảnh theo thứ tự B-R-G');

% Thay đổi thứ tự kênh màu G-B-R
img_gbr = img(:, :, [2, 3, 1]); % Thay đổi thứ tự các kênh màu
figure;
imshow(img_gbr);
title('Ảnh theo thứ tự G-B-R');