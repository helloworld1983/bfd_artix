// Build ID Verilog Module
//
// Date:             11042020
// Time:             181555

module firmware_rev
(
   output [31:0]  firmware_date,
   output [31:0]  firmware_time
);

   assign firmware_date = 32'h11042020;
   assign firmware_time = 32'h181555;

endmodule
