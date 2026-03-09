// quadra.vh

`ifndef QUADRA_VH
`define QUADRA_VH

typedef logic ck_t; // clock
typedef logic rs_t; // reset
typedef logic dv_t; // data valid

// --------------------------------------------------------------------------------
// I/O precision
// --------------------------------------------------------------------------------

// x in [0,2) -> u1.23
localparam int  X_I =  1;          //         =  1
localparam int  X_F = 23;          //         = 23
localparam int  X_W = X_I + X_F;   //  1 + 23 = 24 (u1.23)

typedef logic [X_W-1:0] x_t;

// y [-2,2) -> s2.23
localparam int  Y_I =  2;          //         =  2
localparam int  Y_F = 23;          //         = 23
localparam int  Y_W = Y_I + Y_F;   //  2 + 23 = 25 (s2.23)

typedef logic signed [Y_W-1:0] y_t;

// --------------------------------------------------------------------------------
// Internal precision:
// --------------------------------------------------------------------------------

// <challenge!>
localparam int X1_W = 7;
typedef logic [X1_W-1:0] x1_t;

localparam int X2_W = 17;
typedef logic [X2_W-1:0] x2_t;

localparam int A_I = 1;
localparam int A_F = 22;
localparam int A_W = A_I + A_F;   // s1.22
typedef logic signed [A_W-1:0] a_t;

localparam int B_I = 3;
localparam int B_F = 16;
localparam int B_W = B_I + B_F;   // s3.16
typedef logic signed [B_W-1:0] b_t;

localparam int C_I = 2;
localparam int C_F = 11;
localparam int C_W = C_I + C_F;   // s2.11
typedef logic signed [C_W-1:0] c_t;

localparam int SQ_W = 34;
typedef logic [SQ_W-1:0] sq_t;

localparam int T0_W = A_W;               // a
localparam int T1_W = B_W + X2_W;        // b*x2
localparam int T2_W = C_W + SQ_W;        // c*x2^2
localparam int S_W  = 32;                // safe accumulator width

typedef logic signed [T0_W-1:0] t0_t;
typedef logic signed [T1_W-1:0] t1_t;
typedef logic signed [T2_W-1:0] t2_t;
typedef logic signed [S_W-1:0]  s_t;

`endif
