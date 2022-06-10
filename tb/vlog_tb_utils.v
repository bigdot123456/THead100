`ifndef dump_level
	`define dump_level 10
`endif

module vlog_tb_utils;
	parameter MAX_STRING_LEN = 128;
	localparam CHAR_WIDTH = 8;

	//Force simulation stop after timeout cycles
	reg [63:0] timeout;
	initial
		if($value$plusargs("timeout=%d", timeout)) begin
			#timeout $display("Timeout: Forcing end of simulation");
			$finish;
		end

	//FIXME: Add more options for VCD logging
	reg [MAX_STRING_LEN*CHAR_WIDTH-1:0] testcase;

	initial begin
		#1;
		if($test$plusargs("fsdb")) begin
			$display("dump testcase file!");
			if($value$plusargs("testcase=%s", testcase))
				$fsdbDumpfile({testcase,".fsdb"});
			else
				$fsdbDumpfile("1.fsdb");

			$fsdbDumpvars(`dump_level);
			$display("dump OK!");

		end
	end

	initial begin
		if($test$plusargs("vcd")) begin
			$display("dump vcd file: test.vcd!");

   		$dumpfile("test.vcd");
   		$dumpvars;
		end
	end
	
	initial begin
		#1;
		$display("Start Recording Waveform in FSDB format with cli +fsdb! If not OK, open vlog_tb_utils.v +65!");
	//$fsdbDumpfile("dump.fsdb");
	//$fsdbDumpvars(`dump_level);
	end


	
	//Heartbeat timer for simulations
	reg [63:0] heartbeat;
	initial begin
		if($value$plusargs("heartbeat=%d", heartbeat))
			forever #heartbeat $display("Heartbeat : Time=%0t", $time);
	end

endmodule // vlog_tb_utils
