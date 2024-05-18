clc; close all; clear all;

f = [1, 0, -1; 1, 0, -1; 1, 0, -1];

I=imread('trees.tif');
subplot(2,2,1); imshow(I); title('original image');

J=imfilter(I,f,'symmetric');
subplot(2,2,2); imshow(J); title('Output');