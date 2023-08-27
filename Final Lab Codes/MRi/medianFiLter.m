% Remove salt and pepper noise from an image.
%I = imread('MRI.bmp');
clc;clear all;close all;
I = imread('download.jfif');
J = imnoise(I,'salt & pepper',0.02);
K = medfilt2(J);
figure ,imshow(J),title('Before median filter');
figure, imshow(K),title('After median filter');