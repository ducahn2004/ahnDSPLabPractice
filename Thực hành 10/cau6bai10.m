% Đọc ảnh
img = imread('peppers.jpg');

% Chuyển ảnh thành mảng 2D nếu nó là ảnh màu
if size(img, 3) > 1
    img_gray = rgb2gray(img);
else
    img_gray = img;
end

% Áp dụng các bộ lọc
filtered_image1 = conv2(double(img_gray), [1, 0, -1; 1, 0, -1; 1, 0, -1], 'same');
filtered_image2 = conv2(double(img_gray), [1, 0, -1; 1, 0, -1; 1, 0, -1]', 'same');
filtered_image3 = conv2(double(img_gray), [121; 0; -1 - 2 - 1]/2, 'same');
filtered_image4 = conv2(double(img_gray), ones(3)/9, 'same');

% Hiển thị kết quả
subplot(2, 2, 1), imshow(uint8(filtered_image1)), title('Bộ lọc h1');
subplot(2, 2, 2), imshow(uint8(filtered_image2)), title('Bộ lọc h2');
subplot(2, 2, 3), imshow(uint8(filtered_image3)), title('Bộ lọc h3');
subplot(2, 2, 4), imshow(uint8(filtered_image4)), title('Bộ lọc h4');
