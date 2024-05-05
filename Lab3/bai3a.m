st = 'PHAN NGOC QUY TRAN VAN TU NGUYEN MINH TRUNG DUONG DUC MANH DUONG VAN QUAN';
as = double(st);
bas = uint8(dec2bin(as,7)) - 48;
r = double([xor(bas(:,1),1), bas(:,2:end)]);
infor = char(bin2dec(char(r+48)))'
