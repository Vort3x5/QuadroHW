N = 128;
n = [0:N-1]';
x_left = 2*(n/N);
h = 2/128;

% 1. Obliczenie 3 węzłów Czebyszewa dla standardowego przedziału [-1, 1]
k_cheb = [1, 2, 3];
t_cheb = cos(pi .* (2.*k_cheb - 1) ./ 6)';

% 2. Zmapowanie węzłów na lokalny przedział [0, h] dla każdego segmentu
delta = (h/2) .* (t_cheb + 1);

% 3. Macierz Vandermonde'a dla wielomianu 2 stopnia (a + b*x + c*x^2 = y)
V = [ones(3,1), delta, delta.^2];
invV = inv(V);

a = zeros(N,1);
b = zeros(N,1);
c = zeros(N,1);

% 4. Wyznaczanie optymalnych współczynników segment po segmencie
for k = 0:N-1
    x0 = x_left(k+1);
    
    % Próbkowanie idealnej funkcji w węzłach Czebyszewa
    y_ideal = sin(2.*(x0 + delta) - pi/4);
    
    % Rozwiązanie układu równań (mnożenie przez odwróconą macierz)
    coeffs_opt = invV * y_ideal;
    
    a(k+1) = coeffs_opt(1);
    b(k+1) = coeffs_opt(2);
    c(k+1) = coeffs_opt(3);
end

coeffs = [n a b c];
save -ascii coeffs.txt coeffs
