function RLC = encodeRLC(img)
[m, n] = size(img);
RLC = [];
for i=1:m
    j = 1;
    while j <= n
        c = img(i,j);
        d = 0;
        while img(i,j)==c
            d = d + 1;
            j = j + 1;
            if (j>n) 
                break;
            end
        end
        k = "1";
        if c == 0
            k = "0";
        end
        RLC = [RLC,biEncode(d) + k];
    end
end
end