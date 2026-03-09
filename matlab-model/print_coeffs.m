##
## Convert signed coeffs to hex:
##

coeffs = dlmread('coeffs.txt', '', 1, 0);

k = coeffs(:,1);
a = coeffs(:,2);
b = coeffs(:,3);
c = coeffs(:,4);

K = rows(coeffs);

A_W = 23; A_F = 22;
B_W = 19; B_F = 16;
C_W = 13; C_F = 11;

a_q = fix(a * (2^A_F));
b_q = fix(b * (2^B_F));
c_q = fix(c * (2^C_F));

for idx = 1:K
    ak = a_q(idx);
    bk = b_q(idx);
    ck = c_q(idx);

    if (ak < 0) ak = ak + (2^A_W); end
    if (bk < 0) bk = bk + (2^B_W); end
    if (ck < 0) ck = ck + (2^C_W); end

    printf("%3d  0x%06x  0x%05x  0x%04x\n", k(idx), ak, bk, ck);
endfor
