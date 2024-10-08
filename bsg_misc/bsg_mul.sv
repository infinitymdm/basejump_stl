
`include "bsg_defines.sv"

module bsg_mul #(parameter `BSG_INV_PARAM(width_p)
                 ,harden_p=1
                 )
   (input    [width_p-1:0]   x_i
    , input  [width_p-1:0]   y_i
    , input signed_i
    , output [width_p*2-1:0] z_o
    );

   bsg_mul_pipelined #(.width_p    (width_p )
                       ,.pipeline_p(0       )
                       ,.harden_p  (harden_p)
                       ) bmp
   (.clk_i(1'b0)
    ,.en_i(1'b0)
    ,.x_i
    ,.y_i
    ,.signed_i
    ,.z_o
    );


endmodule

`BSG_ABSTRACT_MODULE(bsg_mul)
