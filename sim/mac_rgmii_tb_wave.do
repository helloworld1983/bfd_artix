onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mac_rgmii_tb/mac/phy_rxd
add wave -noupdate /mac_rgmii_tb/mac/phy_rx_ctl
add wave -noupdate /mac_rgmii_tb/mac/phy_rxc
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_clk
add wave -noupdate /mac_rgmii_tb/mac/rst
add wave -noupdate /mac_rgmii_tb/mac/rx_data
add wave -noupdate /mac_rgmii_tb/mac/rx_dv
add wave -noupdate /mac_rgmii_tb/mac/rx_err
add wave -noupdate -divider {New Divider}
add wave -noupdate -radix hexadecimal /mac_rgmii_tb/mac/rx_data_d
add wave -noupdate /mac_rgmii_tb/mac/rx_dv_d
add wave -noupdate /mac_rgmii_tb/mac/rx_err_d
add wave -noupdate -radix unsigned /mac_rgmii_tb/mac/rx_cnt
add wave -noupdate /mac_rgmii_tb/mac/rx_crc_rst
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_data
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_valid
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_sof
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_eof
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_crc_good
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_fr_err
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_data_o
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_valid_o
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_sof_o
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_eof_o
add wave -noupdate /mac_rgmii_tb/mac/mac_rx_clk_o
add wave -noupdate /mac_rgmii_tb/mac/mac_tx_data
add wave -noupdate /mac_rgmii_tb/mac/mac_tx_valid
add wave -noupdate /mac_rgmii_tb/mac/mac_tx_eof
add wave -noupdate /mac_rgmii_tb/mac/mac_tx_sof
add wave -noupdate /mac_rgmii_tb/mac/mac_tx_clk
add wave -noupdate /mac_rgmii_tb/mac/phy_txd
add wave -noupdate /mac_rgmii_tb/mac/phy_tx_ctl
add wave -noupdate /mac_rgmii_tb/mac/phy_txc
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5243450 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 141
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {2124202 ps} {2268395 ps}
