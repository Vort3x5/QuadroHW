`include "quadra.vh"

module quadra_top
(
    input  ck_t clk,
    input  rs_t rst_b,
    input  x_t  x,
    input  dv_t x_dv,
    output y_t  y,
    output dv_t y_dv
);
    dv_t dv_p0, dv_p1, dv_p2;
    x_t  x_p0,  x_p1,  x_p2;
    y_t  y_comb;

    always_ff @(posedge clk) begin
        if (!rst_b) begin
            dv_p0 <= '0;
            dv_p1 <= '0;
            dv_p2 <= '0;
            x_p0  <= '0;
            x_p1  <= '0;
            x_p2  <= '0;
        end
        else begin
            dv_p0 <= x_dv;
            dv_p1 <= dv_p0;
            dv_p2 <= dv_p1;
            x_p0  <= x;
            x_p1  <= x_p0;
            x_p2  <= x_p1;
        end
    end

    quadra u_quadra (
        .x_in (x_p2),
        .y_out(y_comb)
    );

    always_comb y_dv = dv_p2;
    always_comb y    = y_comb;

endmodule
