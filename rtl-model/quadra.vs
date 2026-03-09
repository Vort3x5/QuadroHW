//
// Quadratic polynomial:  f(x) = a + b*x2 + c*(x2^2)
//

`include "quadra.vh"

module quadra
(
    // <challenge>
	input  x_t  x,
    output y_t  y
);

    // <challenge>    
	x1_t x1;
    x2_t x2;

    a_t a;
    b_t b;
    c_t c;

    sq_t sq;

    t0_t t0;
    t1_t t1;
    t2_t t2;
    s_t  s;

    always_comb begin
        x1 = x[X_W-1 -: X1_W];
        x2 = x[X2_W-1:0];
    end

    lut u_lut (
        .x1 (x1),
        .a  (a),
        .b  (b),
        .c  (c)
    );

    square u_square (
        .x2 (x2),
        .sq (sq)
    );

    always_comb begin
        t0 = a;
        t1 = $signed(b) * $signed({1'b0, x2});
        t2 = $signed(c) * $signed({1'b0, sq});
        s  = $signed(t0) + $signed(t1 >>> X2_W) + $signed(t2 >>> (2*X2_W));
        y  = s[Y_W-1:0];
    end
endmodule
