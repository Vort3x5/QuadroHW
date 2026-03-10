N = 128;
n = [0:N-1]';
x_left = 2*(n/N);
h = 2/128;
x = x_left + h/2;

f_mid   =  sin((2.*x)-(pi/4));
fp_mid  =  2.*cos((2.*x)-(pi/4));
fpp_mid = -4.*sin((2.*x)-(pi/4));

a = f_mid - (h/2).*fp_mid + ((h^2)/8).*fpp_mid;
b = fp_mid - (h/2).*fpp_mid;
c = fpp_mid ./ 2;

coeffs = [n a b c];
save -ascii coeffs.txt coeffs
