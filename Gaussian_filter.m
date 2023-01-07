Close all
Clear
Clc

I = imread('img_1.jpg');	

%# Create the gaussian filter with hsize = [5 5] and sigma = 2
G = fspecial('gaussian',[5 5],2);

%# Filter it
Ig = imfilter(I,G,'same');

%# Display
imshow(Ig)
