%Write a MATLAB/Python program to identify horizontal, vertical lines from an image. 
% Read the image
image = imread('LINE1.JPG'); % Replace 'your_image.jpg' with your image file path

% Convert the image to grayscale
grayImage = rgb2gray(image);

% Apply edge detection to find edges in the image
edgeImage = edge(grayImage, 'canny');

% Perform Hough Transform to detect lines
[H, theta, rho] = hough(edgeImage);

% Find peaks in the Hough Transform matrix
peaks = houghpeaks(H, 20); % Adjust the number of peaks as needed

% Extract lines from the Hough Transform
lines = houghlines(edgeImage, theta, rho, peaks);

% Create a figure to display the original image with detected lines
figure;
imshow(image);
hold on;

% Plot the detected lines on the image
for i = 1:length(lines)
    xy = [lines(i).point1; lines(i).point2];
    plot(xy(:, 1), xy(:, 2), 'LineWidth', 2, 'Color', 'r');
end

title('Image with Detected Lines');
hold off;
