// Generated by CIRCT firtool-1.62.0
// Standard header to adapt well known macros for register randomization.
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_MEM_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_MEM_INIT
`endif // not def RANDOMIZE
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_

// Include register initializers in init blocks unless synthesis is set
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Include rmemory initializers in init blocks unless synthesis is set
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_MEM_
    `define ENABLE_INITIAL_MEM_
  `endif // not def ENABLE_INITIAL_MEM_
`endif // not def SYNTHESIS

// Standard header to adapt well known macros for prints and assertions.

// Users can define 'PRINTF_COND' to add an extra gate to prints.
`ifndef PRINTF_COND_
  `ifdef PRINTF_COND
    `define PRINTF_COND_ (`PRINTF_COND)
  `else  // PRINTF_COND
    `define PRINTF_COND_ 1
  `endif // PRINTF_COND
`endif // not def PRINTF_COND_

// Users can define 'ASSERT_VERBOSE_COND' to add an extra gate to assert error printing.
`ifndef ASSERT_VERBOSE_COND_
  `ifdef ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ (`ASSERT_VERBOSE_COND)
  `else  // ASSERT_VERBOSE_COND
    `define ASSERT_VERBOSE_COND_ 1
  `endif // ASSERT_VERBOSE_COND
`endif // not def ASSERT_VERBOSE_COND_

// Users can define 'STOP_COND' to add an extra gate to stop conditions.
`ifndef STOP_COND_
  `ifdef STOP_COND
    `define STOP_COND_ (`STOP_COND)
  `else  // STOP_COND
    `define STOP_COND_ 1
  `endif // STOP_COND
`endif // not def STOP_COND_

module TLBusBypassBar(
  input          clock,
                 reset,
  output         auto_in_a_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_in_a_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [2:0]   auto_in_a_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [8:0]   auto_in_a_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [31:0]  auto_in_a_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_in_d_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_in_d_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [2:0]   auto_in_d_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [1:0]   auto_in_d_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_in_d_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_in_d_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_in_d_bits_sink,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_in_d_bits_denied,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [31:0]  auto_in_d_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_in_d_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_out_1_a_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_out_1_a_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [2:0]   auto_out_1_a_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [8:0]   auto_out_1_a_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [31:0]  auto_out_1_a_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_out_1_d_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_out_1_d_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [2:0]   auto_out_1_d_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [1:0]   auto_out_1_d_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_out_1_d_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_out_1_d_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_out_1_d_bits_sink,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_out_1_d_bits_denied,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [31:0]  auto_out_1_d_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_out_1_d_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_out_0_a_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_out_0_a_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [2:0]   auto_out_0_a_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [127:0] auto_out_0_a_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [31:0]  auto_out_0_a_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_out_0_d_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_out_0_d_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [2:0]   auto_out_0_d_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [1:0]   auto_out_0_d_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_out_0_d_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_out_0_d_bits_denied,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_out_0_d_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 io_bypass	// src/main/scala/devices/tilelink/BusBypass.scala:67:16
);

  wire         auto_in_a_valid_0 = auto_in_a_valid;
  wire [2:0]   auto_in_a_bits_opcode_0 = auto_in_a_bits_opcode;
  wire [8:0]   auto_in_a_bits_address_0 = auto_in_a_bits_address;
  wire [31:0]  auto_in_a_bits_data_0 = auto_in_a_bits_data;
  wire         auto_in_d_ready_0 = auto_in_d_ready;
  wire         auto_out_1_a_ready_0 = auto_out_1_a_ready;
  wire         auto_out_1_d_valid_0 = auto_out_1_d_valid;
  wire [2:0]   auto_out_1_d_bits_opcode_0 = auto_out_1_d_bits_opcode;
  wire [1:0]   auto_out_1_d_bits_param_0 = auto_out_1_d_bits_param;
  wire [1:0]   auto_out_1_d_bits_size_0 = auto_out_1_d_bits_size;
  wire         auto_out_1_d_bits_source_0 = auto_out_1_d_bits_source;
  wire         auto_out_1_d_bits_sink_0 = auto_out_1_d_bits_sink;
  wire         auto_out_1_d_bits_denied_0 = auto_out_1_d_bits_denied;
  wire [31:0]  auto_out_1_d_bits_data_0 = auto_out_1_d_bits_data;
  wire         auto_out_1_d_bits_corrupt_0 = auto_out_1_d_bits_corrupt;
  wire         auto_out_0_a_ready_0 = auto_out_0_a_ready;
  wire         auto_out_0_d_valid_0 = auto_out_0_d_valid;
  wire [2:0]   auto_out_0_d_bits_opcode_0 = auto_out_0_d_bits_opcode;
  wire [1:0]   auto_out_0_d_bits_param_0 = auto_out_0_d_bits_param;
  wire [1:0]   auto_out_0_d_bits_size_0 = auto_out_0_d_bits_size;
  wire         auto_out_0_d_bits_denied_0 = auto_out_0_d_bits_denied;
  wire         auto_out_0_d_bits_corrupt_0 = auto_out_0_d_bits_corrupt;
  wire         io_bypass_0 = io_bypass;
  wire         a_last = 1'h1;	// src/main/scala/tilelink/Edges.scala:233:33
  wire         beats1_opdata_1 = 1'h1;	// src/main/scala/tilelink/Edges.scala:98:28
  wire         counter1_1 = 1'h1;	// src/main/scala/tilelink/Edges.scala:231:28
  wire         b_first = 1'h1;	// src/main/scala/tilelink/Edges.scala:232:25
  wire         b_last = 1'h1;	// src/main/scala/tilelink/Edges.scala:233:33
  wire         counter1_2 = 1'h1;	// src/main/scala/tilelink/Edges.scala:231:28
  wire         c_first = 1'h1;	// src/main/scala/tilelink/Edges.scala:232:25
  wire         c_last = 1'h1;	// src/main/scala/tilelink/Edges.scala:233:33
  wire         d_last = 1'h1;	// src/main/scala/tilelink/Edges.scala:233:33
  wire         counter1_4 = 1'h1;	// src/main/scala/tilelink/Edges.scala:231:28
  wire         e_first = 1'h1;	// src/main/scala/tilelink/Edges.scala:232:25
  wire         e_last = 1'h1;	// src/main/scala/tilelink/Edges.scala:233:33
  wire         c_response = 1'h1;	// src/main/scala/tilelink/Edges.scala:83:41
  wire         stall_last = 1'h1;	// src/main/scala/tilelink/Edges.scala:233:33
  wire         auto_in_a_bits_source = 1'h0;
  wire         auto_in_a_bits_corrupt = 1'h0;
  wire         auto_out_1_a_bits_source = 1'h0;
  wire         auto_out_1_a_bits_corrupt = 1'h0;
  wire         auto_out_0_a_bits_source = 1'h0;
  wire         auto_out_0_a_bits_corrupt = 1'h0;
  wire         auto_out_0_d_bits_source = 1'h0;
  wire         auto_out_0_d_bits_sink = 1'h0;
  wire         nodeIn_a_bits_source = 1'h0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         nodeIn_a_bits_corrupt = 1'h0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         nodeOut_a_bits_source = 1'h0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeOut_a_bits_corrupt = 1'h0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeOut_d_bits_source = 1'h0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeOut_d_bits_sink = 1'h0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         x1_nodeOut_a_bits_source = 1'h0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         x1_nodeOut_a_bits_corrupt = 1'h0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         beats1_decode = 1'h0;	// src/main/scala/tilelink/Edges.scala:221:59
  wire         beats1 = 1'h0;	// src/main/scala/tilelink/Edges.scala:222:14
  wire         count = 1'h0;	// src/main/scala/tilelink/Edges.scala:235:25
  wire         beats1_decode_1 = 1'h0;	// src/main/scala/tilelink/Edges.scala:221:59
  wire         beats1_1 = 1'h0;	// src/main/scala/tilelink/Edges.scala:222:14
  wire         done_1 = 1'h0;	// src/main/scala/tilelink/Edges.scala:234:22
  wire         count_1 = 1'h0;	// src/main/scala/tilelink/Edges.scala:235:25
  wire         beats1_decode_2 = 1'h0;	// src/main/scala/tilelink/Edges.scala:221:59
  wire         beats1_opdata_2 = 1'h0;	// src/main/scala/tilelink/Edges.scala:103:36
  wire         beats1_2 = 1'h0;	// src/main/scala/tilelink/Edges.scala:222:14
  wire         done_2 = 1'h0;	// src/main/scala/tilelink/Edges.scala:234:22
  wire         count_2 = 1'h0;	// src/main/scala/tilelink/Edges.scala:235:25
  wire         beats1_decode_3 = 1'h0;	// src/main/scala/tilelink/Edges.scala:221:59
  wire         beats1_3 = 1'h0;	// src/main/scala/tilelink/Edges.scala:222:14
  wire         count_3 = 1'h0;	// src/main/scala/tilelink/Edges.scala:235:25
  wire         done_4 = 1'h0;	// src/main/scala/tilelink/Edges.scala:234:22
  wire         count_4 = 1'h0;	// src/main/scala/tilelink/Edges.scala:235:25
  wire         c_request = 1'h0;	// src/main/scala/tilelink/Edges.scala:69:40
  wire         b_inc = 1'h0;	// src/main/scala/tilelink/Edges.scala:312:37
  wire         c_inc = 1'h0;	// src/main/scala/tilelink/Edges.scala:313:37
  wire         e_inc = 1'h0;	// src/main/scala/tilelink/Edges.scala:315:37
  wire         a_dec = 1'h0;	// src/main/scala/tilelink/Edges.scala:318:36
  wire         b_dec = 1'h0;	// src/main/scala/tilelink/Edges.scala:319:36
  wire         c_dec = 1'h0;	// src/main/scala/tilelink/Edges.scala:320:36
  wire         e_dec = 1'h0;	// src/main/scala/tilelink/Edges.scala:322:36
  wire         stall_beats1_decode = 1'h0;	// src/main/scala/tilelink/Edges.scala:221:59
  wire         stall_beats1 = 1'h0;	// src/main/scala/tilelink/Edges.scala:222:14
  wire         stall_count = 1'h0;	// src/main/scala/tilelink/Edges.scala:235:25
  wire         nodeIn_d_bits_out_source = 1'h0;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53
  wire         nodeIn_d_bits_out_sink = 1'h0;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53
  wire [31:0]  auto_out_0_d_bits_data = 32'h0;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [31:0]  nodeOut_d_bits_data = 32'h0;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [31:0]  nodeIn_d_bits_out_data = 32'h0;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [3:0]   auto_in_a_bits_mask = 4'hF;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [3:0]   auto_out_1_a_bits_mask = 4'hF;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [3:0]   auto_out_0_a_bits_mask = 4'hF;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [3:0]   nodeIn_a_bits_mask = 4'hF;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [3:0]   nodeOut_a_bits_mask = 4'hF;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [3:0]   x1_nodeOut_a_bits_mask = 4'hF;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [1:0]   auto_in_a_bits_size = 2'h2;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [1:0]   auto_out_1_a_bits_size = 2'h2;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [1:0]   auto_out_0_a_bits_size = 2'h2;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [1:0]   nodeIn_a_bits_size = 2'h2;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [1:0]   nodeOut_a_bits_size = 2'h2;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [1:0]   x1_nodeOut_a_bits_size = 2'h2;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [2:0]   auto_in_a_bits_param = 3'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [2:0]   auto_out_1_a_bits_param = 3'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [2:0]   auto_out_0_a_bits_param = 3'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire         nodeIn_a_ready;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [2:0]   nodeIn_a_bits_param = 3'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [2:0]   nodeOut_a_bits_param = 3'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire [2:0]   x1_nodeOut_a_bits_param = 3'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Nodes.scala:24:25
  wire         nodeIn_a_valid = auto_in_a_valid_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [2:0]   nodeIn_a_bits_opcode = auto_in_a_bits_opcode_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [8:0]   nodeIn_a_bits_address = auto_in_a_bits_address_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [31:0]  nodeIn_a_bits_data = auto_in_a_bits_data_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         nodeIn_d_ready = auto_in_d_ready_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         nodeIn_d_valid;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [2:0]   nodeIn_d_bits_opcode;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [1:0]   nodeIn_d_bits_param;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [1:0]   nodeIn_d_bits_size;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         nodeIn_d_bits_source;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         nodeIn_d_bits_sink;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         nodeIn_d_bits_denied;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [31:0]  nodeIn_d_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         nodeIn_d_bits_corrupt;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         x1_nodeOut_a_ready = auto_out_1_a_ready_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         x1_nodeOut_a_valid;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [2:0]   x1_nodeOut_a_bits_opcode;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [8:0]   x1_nodeOut_a_bits_address;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [31:0]  x1_nodeOut_a_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         x1_nodeOut_d_ready;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         x1_nodeOut_d_valid = auto_out_1_d_valid_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [2:0]   x1_nodeOut_d_bits_opcode = auto_out_1_d_bits_opcode_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [1:0]   x1_nodeOut_d_bits_param = auto_out_1_d_bits_param_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [1:0]   x1_nodeOut_d_bits_size = auto_out_1_d_bits_size_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         x1_nodeOut_d_bits_source = auto_out_1_d_bits_source_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         x1_nodeOut_d_bits_sink = auto_out_1_d_bits_sink_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         x1_nodeOut_d_bits_denied = auto_out_1_d_bits_denied_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [31:0]  x1_nodeOut_d_bits_data = auto_out_1_d_bits_data_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         x1_nodeOut_d_bits_corrupt = auto_out_1_d_bits_corrupt_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeOut_a_ready = auto_out_0_a_ready_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeOut_a_valid;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [2:0]   nodeOut_a_bits_opcode;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [127:0] nodeOut_a_bits_address;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [31:0]  nodeOut_a_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeOut_d_ready;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeOut_d_valid = auto_out_0_d_valid_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [2:0]   nodeOut_d_bits_opcode = auto_out_0_d_bits_opcode_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [1:0]   nodeOut_d_bits_param = auto_out_0_d_bits_param_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [1:0]   nodeOut_d_bits_size = auto_out_0_d_bits_size_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeOut_d_bits_denied = auto_out_0_d_bits_denied_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeOut_d_bits_corrupt = auto_out_0_d_bits_corrupt_0;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         auto_in_a_ready_0 = nodeIn_a_ready;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  assign nodeOut_a_bits_opcode = nodeIn_a_bits_opcode;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign x1_nodeOut_a_bits_opcode = nodeIn_a_bits_opcode;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign x1_nodeOut_a_bits_address = nodeIn_a_bits_address;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign nodeOut_a_bits_data = nodeIn_a_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign x1_nodeOut_a_bits_data = nodeIn_a_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire         auto_in_d_valid_0 = nodeIn_d_valid;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [2:0]   auto_in_d_bits_opcode_0 = nodeIn_d_bits_opcode;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [1:0]   auto_in_d_bits_param_0 = nodeIn_d_bits_param;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [1:0]   auto_in_d_bits_size_0 = nodeIn_d_bits_size;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         auto_in_d_bits_source_0 = nodeIn_d_bits_source;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         auto_in_d_bits_sink_0 = nodeIn_d_bits_sink;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         auto_in_d_bits_denied_0 = nodeIn_d_bits_denied;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [31:0]  auto_in_d_bits_data_0 = nodeIn_d_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         auto_in_d_bits_corrupt_0 = nodeIn_d_bits_corrupt;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         auto_out_0_a_valid_0 = nodeOut_a_valid;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [2:0]   auto_out_0_a_bits_opcode_0 = nodeOut_a_bits_opcode;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [127:0] auto_out_0_a_bits_address_0 = nodeOut_a_bits_address;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [31:0]  auto_out_0_a_bits_data_0 = nodeOut_a_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         auto_out_0_d_ready_0 = nodeOut_d_ready;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [2:0]   nodeIn_d_bits_out_opcode = nodeOut_d_bits_opcode;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [1:0]   nodeIn_d_bits_out_param = nodeOut_d_bits_param;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [1:0]   nodeIn_d_bits_out_size = nodeOut_d_bits_size;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeIn_d_bits_out_denied = nodeOut_d_bits_denied;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeIn_d_bits_out_corrupt = nodeOut_d_bits_corrupt;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         auto_out_1_a_valid_0 = x1_nodeOut_a_valid;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [2:0]   auto_out_1_a_bits_opcode_0 = x1_nodeOut_a_bits_opcode;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [8:0]   auto_out_1_a_bits_address_0 = x1_nodeOut_a_bits_address;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [31:0]  auto_out_1_a_bits_data_0 = x1_nodeOut_a_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         auto_out_1_d_ready_0 = x1_nodeOut_d_ready;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [2:0]   nodeIn_d_bits_out_1_opcode = x1_nodeOut_d_bits_opcode;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [1:0]   nodeIn_d_bits_out_1_param = x1_nodeOut_d_bits_param;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [1:0]   nodeIn_d_bits_out_1_size = x1_nodeOut_d_bits_size;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeIn_d_bits_out_1_source = x1_nodeOut_d_bits_source;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeIn_d_bits_out_1_sink = x1_nodeOut_d_bits_sink;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeIn_d_bits_out_1_denied = x1_nodeOut_d_bits_denied;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [31:0]  nodeIn_d_bits_out_1_data = x1_nodeOut_d_bits_data;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  wire         nodeIn_d_bits_out_1_corrupt = x1_nodeOut_d_bits_corrupt;	// src/main/scala/devices/tilelink/BusBypass.scala:97:53, src/main/scala/diplomacy/Nodes.scala:1205:17
  reg          in_reset;	// src/main/scala/devices/tilelink/BusBypass.scala:79:27
  reg          bypass_reg;	// src/main/scala/devices/tilelink/BusBypass.scala:80:25
  wire         bypass = in_reset ? io_bypass_0 : bypass_reg;	// src/main/scala/devices/tilelink/BusBypass.scala:79:27, :80:25, :81:21
  reg  [1:0]   flight;	// src/main/scala/tilelink/Edges.scala:296:25
  wire         _stall_T_1 = nodeIn_a_ready & nodeIn_a_valid;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         done;	// src/main/scala/tilelink/Edges.scala:234:22
  assign done = _stall_T_1;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/tilelink/Edges.scala:234:22
  wire         stall_done;	// src/main/scala/tilelink/Edges.scala:234:22
  assign stall_done = _stall_T_1;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/tilelink/Edges.scala:234:22
  wire         beats1_opdata = ~(nodeIn_a_bits_opcode[2]);	// src/main/scala/diplomacy/Nodes.scala:1214:17, src/main/scala/tilelink/Edges.scala:93:{28,37}
  reg          counter;	// src/main/scala/tilelink/Edges.scala:230:27
  wire         counter1 = counter - 1'h1;	// src/main/scala/tilelink/Edges.scala:230:27, :231:28
  wire         a_first = ~counter;	// src/main/scala/tilelink/Edges.scala:230:27, :232:25
  wire         _d_dec_T = nodeIn_d_ready & nodeIn_d_valid;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/diplomacy/Nodes.scala:1214:17
  wire         done_3;	// src/main/scala/tilelink/Edges.scala:234:22
  assign done_3 = _d_dec_T;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/tilelink/Edges.scala:234:22
  wire         d_dec;	// src/main/scala/tilelink/Edges.scala:321:36
  assign d_dec = _d_dec_T;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/tilelink/Edges.scala:321:36
  wire         beats1_opdata_3 = nodeIn_d_bits_opcode[0];	// src/main/scala/diplomacy/Nodes.scala:1214:17, src/main/scala/tilelink/Edges.scala:107:36
  reg          counter_3;	// src/main/scala/tilelink/Edges.scala:230:27
  wire         counter1_3 = counter_3 - 1'h1;	// src/main/scala/tilelink/Edges.scala:230:27, :231:28
  wire         d_first = ~counter_3;	// src/main/scala/tilelink/Edges.scala:230:27, :232:25
  wire         d_request = nodeIn_d_bits_opcode[2] & ~(nodeIn_d_bits_opcode[1]);	// src/main/scala/diplomacy/Nodes.scala:1214:17, src/main/scala/tilelink/Edges.scala:72:{36,40,43,52}
  wire         a_inc = _stall_T_1 & a_first;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/tilelink/Edges.scala:232:25, :311:{26,37}
  wire         d_inc = _d_dec_T & d_first & d_request;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/tilelink/Edges.scala:72:40, :232:25, :314:37
  wire [1:0]   inc = {a_inc, d_inc};	// src/main/scala/tilelink/Edges.scala:311:37, :314:37, :316:18
  wire [1:0]   dec = {1'h0, d_dec};	// src/main/scala/tilelink/Edges.scala:321:36, :323:18
  wire [1:0]   next_flight =
    flight + {1'h0, inc[0]} + {1'h0, inc[1]} - ({1'h0, dec[0]} + {1'h0, dec[1]});	// src/main/scala/tilelink/Edges.scala:296:25, :316:18, :323:18, :325:{30,40,46,56}
  wire         io_pending = |flight;	// src/main/scala/devices/tilelink/BusBypass.scala:84:27, src/main/scala/tilelink/Edges.scala:296:25
  wire         stall_beats1_opdata = ~(nodeIn_a_bits_opcode[2]);	// src/main/scala/diplomacy/Nodes.scala:1214:17, src/main/scala/tilelink/Edges.scala:93:{28,37}
  reg          stall_counter;	// src/main/scala/tilelink/Edges.scala:230:27
  wire         stall_counter1 = stall_counter - 1'h1;	// src/main/scala/tilelink/Edges.scala:230:27, :231:28
  wire         stall_first = ~stall_counter;	// src/main/scala/tilelink/Edges.scala:230:27, :232:25
  wire         stall = bypass != io_bypass_0 & stall_first;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :86:{25,40}, src/main/scala/tilelink/Edges.scala:232:25
  assign nodeOut_a_valid = ~stall & nodeIn_a_valid & bypass;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :86:40, :88:{21,42}, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign x1_nodeOut_a_valid = ~stall & nodeIn_a_valid & ~bypass;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :86:40, :88:21, :89:{42,45}, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign nodeIn_a_ready = ~stall & (bypass ? nodeOut_a_ready : x1_nodeOut_a_ready);	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :86:40, :88:21, :90:{28,34}, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign nodeOut_a_bits_address = {119'h0, nodeIn_a_bits_address};	// src/main/scala/devices/tilelink/BusBypass.scala:91:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign nodeOut_d_ready = nodeIn_d_ready & bypass;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :94:32, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign x1_nodeOut_d_ready = nodeIn_d_ready & ~bypass;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :89:45, :95:32, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign nodeIn_d_valid = bypass ? nodeOut_d_valid : x1_nodeOut_d_valid;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :96:24, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign nodeIn_d_bits_opcode =
    bypass ? nodeIn_d_bits_out_opcode : nodeIn_d_bits_out_1_opcode;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :97:53, :98:21, src/main/scala/diplomacy/Nodes.scala:1214:17
  assign nodeIn_d_bits_param =
    bypass ? nodeIn_d_bits_out_param : nodeIn_d_bits_out_1_param;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :97:53, :98:21, src/main/scala/diplomacy/Nodes.scala:1214:17
  assign nodeIn_d_bits_size = bypass ? nodeIn_d_bits_out_size : nodeIn_d_bits_out_1_size;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :97:53, :98:21, src/main/scala/diplomacy/Nodes.scala:1214:17
  assign nodeIn_d_bits_source = ~bypass & nodeIn_d_bits_out_1_source;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :97:53, :98:21, src/main/scala/diplomacy/Nodes.scala:1214:17
  assign nodeIn_d_bits_sink = ~bypass & nodeIn_d_bits_out_1_sink;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :97:53, :98:21, src/main/scala/diplomacy/Nodes.scala:1214:17
  assign nodeIn_d_bits_denied =
    bypass ? nodeIn_d_bits_out_denied : nodeIn_d_bits_out_1_denied;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :97:53, :98:21, src/main/scala/diplomacy/Nodes.scala:1214:17
  assign nodeIn_d_bits_data = bypass ? 32'h0 : nodeIn_d_bits_out_1_data;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :97:53, :98:21, src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign nodeIn_d_bits_corrupt =
    bypass ? nodeIn_d_bits_out_corrupt : nodeIn_d_bits_out_1_corrupt;	// src/main/scala/devices/tilelink/BusBypass.scala:81:21, :97:53, :98:21, src/main/scala/diplomacy/Nodes.scala:1214:17
  always @(posedge clock) begin
    if (reset) begin
      in_reset <= 1'h1;	// src/main/scala/devices/tilelink/BusBypass.scala:79:27
      flight <= 2'h0;	// src/main/scala/tilelink/Edges.scala:296:25
      counter <= 1'h0;	// src/main/scala/tilelink/Edges.scala:230:27
      counter_3 <= 1'h0;	// src/main/scala/tilelink/Edges.scala:230:27
      stall_counter <= 1'h0;	// src/main/scala/tilelink/Edges.scala:230:27
    end
    else begin
      in_reset <= 1'h0;	// src/main/scala/devices/tilelink/BusBypass.scala:79:27
      flight <= next_flight;	// src/main/scala/tilelink/Edges.scala:296:25, :325:46
      if (_stall_T_1) begin	// src/main/scala/chisel3/util/Decoupled.scala:52:35
        counter <= ~a_first & counter1;	// src/main/scala/tilelink/Edges.scala:230:27, :231:28, :232:25, :237:21
        stall_counter <= ~stall_first & stall_counter1;	// src/main/scala/tilelink/Edges.scala:230:27, :231:28, :232:25, :237:21
      end
      if (_d_dec_T)	// src/main/scala/chisel3/util/Decoupled.scala:52:35
        counter_3 <= ~d_first & counter1_3;	// src/main/scala/tilelink/Edges.scala:230:27, :231:28, :232:25, :237:21
    end
    if (in_reset | next_flight == 2'h0)	// src/main/scala/devices/tilelink/BusBypass.scala:79:27, :85:{20,36}, src/main/scala/tilelink/Edges.scala:296:25, :325:46
      bypass_reg <= io_bypass_0;	// src/main/scala/devices/tilelink/BusBypass.scala:80:25
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_
    `ifdef FIRRTL_BEFORE_INITIAL
      `FIRRTL_BEFORE_INITIAL
    `endif // FIRRTL_BEFORE_INITIAL
    initial begin
      automatic logic [31:0] _RANDOM[0:0];
      `ifdef INIT_RANDOM_PROLOG_
        `INIT_RANDOM_PROLOG_
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT
        _RANDOM[/*Zero width*/ 1'b0] = `RANDOM;
        in_reset = _RANDOM[/*Zero width*/ 1'b0][0];	// src/main/scala/devices/tilelink/BusBypass.scala:79:27
        bypass_reg = _RANDOM[/*Zero width*/ 1'b0][1];	// src/main/scala/devices/tilelink/BusBypass.scala:79:27, :80:25
        flight = _RANDOM[/*Zero width*/ 1'b0][3:2];	// src/main/scala/devices/tilelink/BusBypass.scala:79:27, src/main/scala/tilelink/Edges.scala:296:25
        counter = _RANDOM[/*Zero width*/ 1'b0][4];	// src/main/scala/devices/tilelink/BusBypass.scala:79:27, src/main/scala/tilelink/Edges.scala:230:27
        counter_3 = _RANDOM[/*Zero width*/ 1'b0][7];	// src/main/scala/devices/tilelink/BusBypass.scala:79:27, src/main/scala/tilelink/Edges.scala:230:27
        stall_counter = _RANDOM[/*Zero width*/ 1'b0][9];	// src/main/scala/devices/tilelink/BusBypass.scala:79:27, src/main/scala/tilelink/Edges.scala:230:27
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  TLMonitor_46 monitor (	// src/main/scala/tilelink/Nodes.scala:24:25
    .clock                (clock),
    .reset                (reset),
    .io_in_a_ready        (nodeIn_a_ready),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_a_valid        (nodeIn_a_valid),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_a_bits_opcode  (nodeIn_a_bits_opcode),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_a_bits_address (nodeIn_a_bits_address),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_a_bits_data    (nodeIn_a_bits_data),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_d_ready        (nodeIn_d_ready),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_d_valid        (nodeIn_d_valid),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_d_bits_opcode  (nodeIn_d_bits_opcode),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_d_bits_param   (nodeIn_d_bits_param),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_d_bits_size    (nodeIn_d_bits_size),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_d_bits_source  (nodeIn_d_bits_source),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_d_bits_sink    (nodeIn_d_bits_sink),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_d_bits_denied  (nodeIn_d_bits_denied),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_d_bits_data    (nodeIn_d_bits_data),	// src/main/scala/diplomacy/Nodes.scala:1214:17
    .io_in_d_bits_corrupt (nodeIn_d_bits_corrupt)	// src/main/scala/diplomacy/Nodes.scala:1214:17
  );
  assign auto_in_a_ready = auto_in_a_ready_0;
  assign auto_in_d_valid = auto_in_d_valid_0;
  assign auto_in_d_bits_opcode = auto_in_d_bits_opcode_0;
  assign auto_in_d_bits_param = auto_in_d_bits_param_0;
  assign auto_in_d_bits_size = auto_in_d_bits_size_0;
  assign auto_in_d_bits_source = auto_in_d_bits_source_0;
  assign auto_in_d_bits_sink = auto_in_d_bits_sink_0;
  assign auto_in_d_bits_denied = auto_in_d_bits_denied_0;
  assign auto_in_d_bits_data = auto_in_d_bits_data_0;
  assign auto_in_d_bits_corrupt = auto_in_d_bits_corrupt_0;
  assign auto_out_1_a_valid = auto_out_1_a_valid_0;
  assign auto_out_1_a_bits_opcode = auto_out_1_a_bits_opcode_0;
  assign auto_out_1_a_bits_address = auto_out_1_a_bits_address_0;
  assign auto_out_1_a_bits_data = auto_out_1_a_bits_data_0;
  assign auto_out_1_d_ready = auto_out_1_d_ready_0;
  assign auto_out_0_a_valid = auto_out_0_a_valid_0;
  assign auto_out_0_a_bits_opcode = auto_out_0_a_bits_opcode_0;
  assign auto_out_0_a_bits_address = auto_out_0_a_bits_address_0;
  assign auto_out_0_a_bits_data = auto_out_0_a_bits_data_0;
  assign auto_out_0_d_ready = auto_out_0_d_ready_0;
endmodule

