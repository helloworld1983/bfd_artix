// Build ID Verilog Module
//
// Date:             29012020
// Time:             190710

module firmware_rev
(
   output [31:0]  firmware_date,
   output [31:0]  firmware_time
);

   assign firmware_date = 32'h29012020;
   assign firmware_time = 32'h190710;

endmodule
