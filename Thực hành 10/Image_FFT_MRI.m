clc; close all; clear all;

%% Load ảnh MRI gốc
data_MRI_struc = load('MRI_brain.mat');
data_MRI = data_MRI_struc.MRI_brain;
subplot(1,3,1)
imshow(data_MRI)
title('Original Image');

%% Find FFT of Image
fftimage = fftshift(fft2(data_MRI));
subplot(1,3,2)
fftshow = mat2gray(log(1+abs(fftimage)));
imshow(fftshow)
title('FFT of Image');

%% Take ifft of Image
inverse = abs(ifft2(fftimage));
inverse = mat2gray(inverse);
subplot(1,3,3)
imshow(inverse);
title('IFFT');

