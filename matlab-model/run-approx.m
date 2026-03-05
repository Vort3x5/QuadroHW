#! /bin/csh -f

if (-f coeffs.txt) then
    rm coeffs.txt
endif

octave -W -q --no-gui approx.m | tee coeffs.txt

# optionally, use optimized coeffs:
# octave -W -q --no-gui approx_opt.m | tee coeffs.txt

octave -W -q --no-gui print_coeffs.m | tee hex_coeffs.txt
