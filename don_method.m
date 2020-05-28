clc;
clear all;
shift_para = 7; % tuned parameter
img_size = 128;


img1 = imread('02.bmp');
img2 = imread('09.bmp');

load('don_template.mat');

f1 = don_coding(img1, don_template);
f2 = don_coding(img2, don_template);

figure;imshow(reshape(f1(1,:,:), [img_size,img_size]));
figure;imshow(reshape(f2(1,:,:), [img_size,img_size]));

distance = matching_don(f1, f2, shift_para);
