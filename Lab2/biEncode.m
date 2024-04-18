function code = biEncode(d)
code = "";
for i=0:7
    t = bitsll(1,i);
    c = string(uint8(bitand(t,d)>0));
    code = c + code;
end