// alt_sld_fab_alt_sld_fab_trfabric_mm_interconnect_1.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 17.0 595

`timescale 1 ps / 1 ps
module alt_sld_fab_alt_sld_fab_trfabric_mm_interconnect_1 (
		input  wire        clock0_out_clk_clk,                        //                      clock0_out_clk.clk
		input  wire        capture_reset_reset_bridge_in_reset_reset, // capture_reset_reset_bridge_in_reset.reset
		input  wire [12:0] capture_storage_mm_master_address,         //           capture_storage_mm_master.address
		output wire        capture_storage_mm_master_waitrequest,     //                                    .waitrequest
		input  wire        capture_storage_mm_master_read,            //                                    .read
		output wire [31:0] capture_storage_mm_master_readdata,        //                                    .readdata
		output wire        capture_storage_mm_master_readdatavalid,   //                                    .readdatavalid
		input  wire        capture_storage_mm_master_write,           //                                    .write
		input  wire [31:0] capture_storage_mm_master_writedata,       //                                    .writedata
		output wire [12:0] mem_s1_address,                            //                              mem_s1.address
		output wire        mem_s1_write,                              //                                    .write
		input  wire [31:0] mem_s1_readdata,                           //                                    .readdata
		output wire [31:0] mem_s1_writedata,                          //                                    .writedata
		output wire [3:0]  mem_s1_byteenable,                         //                                    .byteenable
		output wire        mem_s1_chipselect,                         //                                    .chipselect
		output wire        mem_s1_clken                               //                                    .clken
	);

	wire         capture_storage_mm_master_translator_avalon_universal_master_0_waitrequest;   // mem_s1_translator:uav_waitrequest -> capture_storage_mm_master_translator:uav_waitrequest
	wire  [31:0] capture_storage_mm_master_translator_avalon_universal_master_0_readdata;      // mem_s1_translator:uav_readdata -> capture_storage_mm_master_translator:uav_readdata
	wire         capture_storage_mm_master_translator_avalon_universal_master_0_debugaccess;   // capture_storage_mm_master_translator:uav_debugaccess -> mem_s1_translator:uav_debugaccess
	wire  [14:0] capture_storage_mm_master_translator_avalon_universal_master_0_address;       // capture_storage_mm_master_translator:uav_address -> mem_s1_translator:uav_address
	wire         capture_storage_mm_master_translator_avalon_universal_master_0_read;          // capture_storage_mm_master_translator:uav_read -> mem_s1_translator:uav_read
	wire   [3:0] capture_storage_mm_master_translator_avalon_universal_master_0_byteenable;    // capture_storage_mm_master_translator:uav_byteenable -> mem_s1_translator:uav_byteenable
	wire         capture_storage_mm_master_translator_avalon_universal_master_0_readdatavalid; // mem_s1_translator:uav_readdatavalid -> capture_storage_mm_master_translator:uav_readdatavalid
	wire         capture_storage_mm_master_translator_avalon_universal_master_0_lock;          // capture_storage_mm_master_translator:uav_lock -> mem_s1_translator:uav_lock
	wire         capture_storage_mm_master_translator_avalon_universal_master_0_write;         // capture_storage_mm_master_translator:uav_write -> mem_s1_translator:uav_write
	wire  [31:0] capture_storage_mm_master_translator_avalon_universal_master_0_writedata;     // capture_storage_mm_master_translator:uav_writedata -> mem_s1_translator:uav_writedata
	wire   [2:0] capture_storage_mm_master_translator_avalon_universal_master_0_burstcount;    // capture_storage_mm_master_translator:uav_burstcount -> mem_s1_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (13),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (15),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (1),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (0),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) capture_storage_mm_master_translator (
		.clk                    (clock0_out_clk_clk),                                                           //                       clk.clk
		.reset                  (capture_reset_reset_bridge_in_reset_reset),                                    //                     reset.reset
		.uav_address            (capture_storage_mm_master_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (capture_storage_mm_master_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (capture_storage_mm_master_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (capture_storage_mm_master_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (capture_storage_mm_master_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (capture_storage_mm_master_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (capture_storage_mm_master_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (capture_storage_mm_master_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (capture_storage_mm_master_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (capture_storage_mm_master_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (capture_storage_mm_master_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (capture_storage_mm_master_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (capture_storage_mm_master_waitrequest),                                        //                          .waitrequest
		.av_read                (capture_storage_mm_master_read),                                               //                          .read
		.av_readdata            (capture_storage_mm_master_readdata),                                           //                          .readdata
		.av_readdatavalid       (capture_storage_mm_master_readdatavalid),                                      //                          .readdatavalid
		.av_write               (capture_storage_mm_master_write),                                              //                          .write
		.av_writedata           (capture_storage_mm_master_writedata),                                          //                          .writedata
		.av_burstcount          (1'b1),                                                                         //               (terminated)
		.av_byteenable          (4'b1111),                                                                      //               (terminated)
		.av_beginbursttransfer  (1'b0),                                                                         //               (terminated)
		.av_begintransfer       (1'b0),                                                                         //               (terminated)
		.av_chipselect          (1'b0),                                                                         //               (terminated)
		.av_lock                (1'b0),                                                                         //               (terminated)
		.av_debugaccess         (1'b0),                                                                         //               (terminated)
		.uav_clken              (),                                                                             //               (terminated)
		.av_clken               (1'b1),                                                                         //               (terminated)
		.uav_response           (2'b00),                                                                        //               (terminated)
		.av_response            (),                                                                             //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                                         //               (terminated)
		.av_writeresponsevalid  ()                                                                              //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (13),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (15),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (2),
		.USE_READDATAVALID              (0),
		.USE_WAITREQUEST                (0),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (0),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) mem_s1_translator (
		.clk                    (clock0_out_clk_clk),                                                           //                      clk.clk
		.reset                  (capture_reset_reset_bridge_in_reset_reset),                                    //                    reset.reset
		.uav_address            (capture_storage_mm_master_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (capture_storage_mm_master_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (capture_storage_mm_master_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (capture_storage_mm_master_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (capture_storage_mm_master_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (capture_storage_mm_master_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (capture_storage_mm_master_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (capture_storage_mm_master_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (capture_storage_mm_master_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (capture_storage_mm_master_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (capture_storage_mm_master_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (mem_s1_address),                                                               //      avalon_anti_slave_0.address
		.av_write               (mem_s1_write),                                                                 //                         .write
		.av_readdata            (mem_s1_readdata),                                                              //                         .readdata
		.av_writedata           (mem_s1_writedata),                                                             //                         .writedata
		.av_byteenable          (mem_s1_byteenable),                                                            //                         .byteenable
		.av_chipselect          (mem_s1_chipselect),                                                            //                         .chipselect
		.av_clken               (mem_s1_clken),                                                                 //                         .clken
		.av_read                (),                                                                             //              (terminated)
		.av_begintransfer       (),                                                                             //              (terminated)
		.av_beginbursttransfer  (),                                                                             //              (terminated)
		.av_burstcount          (),                                                                             //              (terminated)
		.av_readdatavalid       (1'b0),                                                                         //              (terminated)
		.av_waitrequest         (1'b0),                                                                         //              (terminated)
		.av_writebyteenable     (),                                                                             //              (terminated)
		.av_lock                (),                                                                             //              (terminated)
		.uav_clken              (1'b0),                                                                         //              (terminated)
		.av_debugaccess         (),                                                                             //              (terminated)
		.av_outputenable        (),                                                                             //              (terminated)
		.uav_response           (),                                                                             //              (terminated)
		.av_response            (2'b00),                                                                        //              (terminated)
		.uav_writeresponsevalid (),                                                                             //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                                          //              (terminated)
	);

endmodule
