// Build ID Verilog Module
//
// Date:             27112019
// Time:             210957

module firmware_rev
(
   output [31:0]  firmware_date,
   output [31:0]  firmware_time
);

   assign firmware_date = 32'h27112019;
   assign firmware_time = 32'h210957;

endmodule
