close all;
image = imread("TestRLC.bmp");
RLC = encodeRLC(image);
img = decodeRLC(RLC);
imshow(img);