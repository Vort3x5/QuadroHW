load coeffs.txt

k = coeffs(:,1);
a = coeffs(:,2);
b = coeffs(:,3);
c = coeffs(:,4);

K = length(k);

A_I =  1; A_F = 20; A_W = A_I + A_F;
B_I =  3; B_F = 14; B_W = B_I + B_F;
C_I =  2; C_F =  8; C_W = C_I + C_F;

a_q = round(a .* (2^A_F));
b_q = round(b .* (2^B_F));
c_q = round(c .* (2^C_F));

A = zeros(K,1); B = zeros(K,1); C = zeros(K,1);

f_hex = fopen('hex_coeffs.txt', 'w');
f_hpp = fopen('../c++-model/CoeffTable.hpp', 'w');

fprintf(f_hpp, '#ifndef __COEFF_TABLE_HPP\n#define __COEFF_TABLE_HPP\n');
fprintf(f_hpp, 'const double CoeffTable[128][4] = {\n');

for k = 0 : K-1
    i = k+1;
    
    if (a_q(i) < 0) A(i) = a_q(i) + (2^A_W); else A(i) = a_q(i); end
    if (b_q(i) < 0) B(i) = b_q(i) + (2^B_W); else B(i) = b_q(i); end
    if (c_q(i) < 0) C(i) = c_q(i) + (2^C_W); else C(i) = c_q(i); end
    
    fprintf(f_hex, '            7''d%d: begin a = %d''h%x; b = %d''h%x; c = %d''h%x; end\n', k, A_W, A(i), B_W, B(i), C_W, C(i));
    
    comma = ',';
    if (k == K-1) comma = ''; end
    fprintf(f_hpp, '    { %d, %.20f, %.20f, %.20f }%s\n', k, a_q(i)/(2^A_F), b_q(i)/(2^B_F), c_q(i)/(2^C_F), comma);
end

fprintf(f_hpp, '};\n#endif\n');
fclose(f_hpp);
fclose(f_hex);
