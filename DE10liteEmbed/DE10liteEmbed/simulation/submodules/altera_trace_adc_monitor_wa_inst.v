// altera_trace_adc_monitor_wa_inst.v

// Generated using ACDS version 17.0 595

`timescale 1 ps / 1 ps
module altera_trace_adc_monitor_wa_inst #(
		parameter IN_DATA_WIDTH  = 12,
		parameter OUT_DATA_WIDTH = 8
	) (
		input  wire        clk,             //             clock.clk
		input  wire        reset,           //             reset.reset
		input  wire        sync_reset,      // synchronous_reset.conduit
		output wire        beat0_rem_valid, //         beat0_rem.valid
		input  wire        in_valid,        //              sink.valid
		input  wire [11:0] in_data,         //                  .data
		output wire        out_valid,       //            source.valid
		output wire [7:0]  out_data,        //                  .data
		input  wire        out_ready        //                  .ready
	);

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (IN_DATA_WIDTH != 12)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					in_data_width_check ( .error(1'b1) );
		end
		if (OUT_DATA_WIDTH != 8)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					out_data_width_check ( .error(1'b1) );
		end
	endgenerate

	altera_trace_adc_monitor_wa #(
		.IN_DATA_WIDTH  (12),
		.OUT_DATA_WIDTH (8)
	) altera_trace_adc_monitor_wa_inst (
		.clk             (clk),             //             clock.clk
		.reset           (reset),           //             reset.reset
		.sync_reset      (sync_reset),      // synchronous_reset.conduit
		.beat0_rem_valid (beat0_rem_valid), //         beat0_rem.valid
		.in_valid        (in_valid),        //              sink.valid
		.in_data         (in_data),         //                  .data
		.out_valid       (out_valid),       //            source.valid
		.out_data        (out_data),        //                  .data
		.out_ready       (out_ready)        //                  .ready
	);

endmodule
