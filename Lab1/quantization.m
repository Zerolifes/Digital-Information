function image = quantization(img, delta)
delta = double(2^(8-delta));
image = uint8(floor(double(img)/delta)*delta);
end