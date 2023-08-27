% Load the image
originalImage = imread('Untitled2.jpeg');

% Convert to grayscale if it's a color image
if size(originalImage, 3) == 3
    originalImage = rgb2gray(originalImage);
end
fftImage = fft2(double(originalImage));
% Example: Gaussian filter for smoothing
sigma = 2;
filterSize = 11;
H = fspecial('gaussian', filterSize, sigma);

% Example: Laplacian filter for sharpening
H_sharpen = fspecial('laplacian', 0.2);
enhancedImage = ifft2(fftImage.*fft2(H));
sharpenedImage = ifft2(fftImage.*fft2(H_sharpen));
enhancedImage = uint8(real(enhancedImage));
sharpenedImage = uint8(real(sharpenedImage));
figure;
subplot(1, 3, 1); imshow(originalImage); title('Original Image');
subplot(1, 3, 2); imshow(enhancedImage); title('Enhanced/Smoothed Image');
subplot(1, 3, 3); imshow(sharpenedImage); title('Sharpened Image');
