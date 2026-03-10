cd matlab-model
octave -W -q --no-gui approx.m > coeffs.txt
octave -W -q --no-gui print_coeffs.m > hex_coeffs.txt
cd ..

# Rekonstrukcja tabeli C++
cat << 'EOF' > c++-model/CoeffTable.hpp
#ifndef __COEFF_TABLE_HPP
#define __COEFF_TABLE_HPP
const double CoeffTable[128][4] = {
EOF

awk '/^[ \t]*[0-9]+/ {printf("    { %s, %s, %s, %s }%s\n", $1, $2, $3, $4, ($1==127 ? "" : ","))}' matlab-model/coeffs.txt >> c++-model/CoeffTable.hpp

cat << 'EOF' >> c++-model/CoeffTable.hpp
};
#endif
EOF

# Rekonstrukcja sprzętowego LUT z filtrowaniem prefiksów 0x
cat << 'EOF' > rtl-model/lut.vs
`include "quadra.vh"

module lut
(
    input  x1_t  x1,
    output a_t   a,
    output b_t   b,
    output c_t   c
);
    always_comb begin
        case (x1)
EOF

awk '/^[ \t]*[0-9]+/ {
    a_val = $2; sub(/^0x/, "", a_val);
    b_val = $3; sub(/^0x/, "", b_val);
    c_val = $4; sub(/^0x/, "", c_val);
    printf("            7'\''d%s: begin a = 23'\''h%s; b = 19'\''h%s; c = 13'\''h%s; end\n", $1, a_val, b_val, c_val);
}' matlab-model/hex_coeffs.txt >> rtl-model/lut.vs

cat << 'EOF' >> rtl-model/lut.vs
            default: begin a = '0; b = '0; c = '0; end
        endcase
    end
endmodule
EOF

# Przebudowa
cd verilator
rm -rf obj_dir
cd ../c++-model
make clean
cd ../verilator
./run-all.csh
