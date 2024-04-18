function img = decodeRLC(RLC)
img = [];
loc = 1;
line = zeros(1,250);
for i=1:length(RLC) 
    b = int32(str2num(RLC(i)));
    l = biDecode(floor(b/10));
    clr = 255 * ones(1,l,"int32") * mod(b,10);
    line(loc:loc+l-1) = clr;
    loc = loc+l;
    if loc >= 250
        img = [img; line];
        line = zeros(1,250);
        loc = 1;
    end
end
img = uint8(img);
end