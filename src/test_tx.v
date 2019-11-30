//
// author: Golovachenko Viktor
//

module test_tx (
    output [7:0] mac_tx_data,
    output reg mac_tx_valid = 1'b0,
    output reg mac_tx_sof = 1'b0,
    output reg mac_tx_eof = 1'b0,

    input start,
    input [15:0] pkt_size,
    input [15:0] pause_size,

    input clk,
    input rst
);

wire [31:0] test_data;
reg [15:0] dcnt = 0;

// enum int unsigned {
// IDLE ,
// CHK_1,
// CHK_2,
// CHK_3,
// CHK_4,
// CHK_5,
// CHK_6,
// CHK_7,
// CHK_8,
// CHK_9,
// CHK_10,
// WAIT_EOF,
// S_PAUSE
// } state = IDLE;

localparam IDLE  = 2'd0;
localparam TX    = 2'd1;
localparam PAUSE = 2'd2;
reg [1:0] fsm_cs = IDLE;

assign mac_tx_data = test_data[7:0];

sata_scrambler #(
    .G_INIT_VAL (16'h55AA)
) test_data (
    .p_in_SOF    (1'b0),
    .p_in_en     (mac_tx_valid),
    .p_out_result(test_data),

    .p_in_clk(clk),
    .p_in_rst(rst)
);

always @(posedge clk) begin
    case (fsm_cs)
        IDLE: begin
            mac_tx_valid <= 1'b0;
            mac_tx_sof <= 1'b0;
            mac_tx_eof <= 1'b0;

            if (start) begin
                mac_tx_valid <= 1'b1;
                mac_tx_sof <= 1'b1;
                mac_tx_eof <= 1'b0;
                fsm_cs <= TX;
            end
        end

        TX: begin
            mac_tx_sof <= 1'b0;
            mac_tx_eof <= 1'b0;
            if (dcnt == (pkt_size - 1)) begin
                dcnt <= 0;
                mac_tx_valid <= 1'b0;
                fsm_cs <= PAUSE;
            end else begin
                dcnt <= dcnt + 1;
            end
        end

        PAUSE: begin
            if (dcnt == (pause_size - 1)) begin
                dcnt <= 0;
                fsm_cs <= IDLE;
            end else begin
                dcnt <= dcnt + 1;
            end
        end
    endcase
end



endmodule