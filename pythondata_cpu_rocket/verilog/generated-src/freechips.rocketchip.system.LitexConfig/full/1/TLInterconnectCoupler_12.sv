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

module TLInterconnectCoupler_12(
  input         clock,
                reset,
                auto_fragmenter_out_a_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output        auto_fragmenter_out_a_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [2:0]  auto_fragmenter_out_a_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_fragmenter_out_a_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [1:0]  auto_fragmenter_out_a_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [8:0]  auto_fragmenter_out_a_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [16:0] auto_fragmenter_out_a_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [7:0]  auto_fragmenter_out_a_bits_mask,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [63:0] auto_fragmenter_out_a_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output        auto_fragmenter_out_a_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_fragmenter_out_d_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input         auto_fragmenter_out_d_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [1:0]  auto_fragmenter_out_d_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [8:0]  auto_fragmenter_out_d_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [63:0] auto_fragmenter_out_d_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output        auto_tl_in_a_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input         auto_tl_in_a_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [2:0]  auto_tl_in_a_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_tl_in_a_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_tl_in_a_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [4:0]  auto_tl_in_a_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [16:0] auto_tl_in_a_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [7:0]  auto_tl_in_a_bits_mask,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [63:0] auto_tl_in_a_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input         auto_tl_in_a_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_tl_in_d_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output        auto_tl_in_d_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [2:0]  auto_tl_in_d_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [4:0]  auto_tl_in_d_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [63:0] auto_tl_in_d_bits_data	// src/main/scala/diplomacy/LazyModule.scala:367:18
);

  wire        auto_fragmenter_out_d_ready_0;
  wire        auto_fragmenter_out_a_bits_corrupt_0;
  wire [63:0] auto_fragmenter_out_a_bits_data_0;
  wire [7:0]  auto_fragmenter_out_a_bits_mask_0;
  wire [16:0] auto_fragmenter_out_a_bits_address_0;
  wire [8:0]  auto_fragmenter_out_a_bits_source_0;
  wire [1:0]  auto_fragmenter_out_a_bits_size_0;
  wire [2:0]  auto_fragmenter_out_a_bits_param_0;
  wire [2:0]  auto_fragmenter_out_a_bits_opcode_0;
  wire        auto_fragmenter_out_a_valid_0;
  wire [63:0] tlOut_d_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [4:0]  tlOut_d_bits_source;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire [2:0]  tlOut_d_bits_size;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire        tlOut_d_valid;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire        tlOut_a_ready;	// src/main/scala/diplomacy/Nodes.scala:1205:17
  wire        auto_fragmenter_out_a_ready_0 = auto_fragmenter_out_a_ready;
  wire        auto_fragmenter_out_d_valid_0 = auto_fragmenter_out_d_valid;
  wire [1:0]  auto_fragmenter_out_d_bits_size_0 = auto_fragmenter_out_d_bits_size;
  wire [8:0]  auto_fragmenter_out_d_bits_source_0 = auto_fragmenter_out_d_bits_source;
  wire [63:0] auto_fragmenter_out_d_bits_data_0 = auto_fragmenter_out_d_bits_data;
  wire        auto_tl_in_a_valid_0 = auto_tl_in_a_valid;
  wire [2:0]  auto_tl_in_a_bits_opcode_0 = auto_tl_in_a_bits_opcode;
  wire [2:0]  auto_tl_in_a_bits_param_0 = auto_tl_in_a_bits_param;
  wire [2:0]  auto_tl_in_a_bits_size_0 = auto_tl_in_a_bits_size;
  wire [4:0]  auto_tl_in_a_bits_source_0 = auto_tl_in_a_bits_source;
  wire [16:0] auto_tl_in_a_bits_address_0 = auto_tl_in_a_bits_address;
  wire [7:0]  auto_tl_in_a_bits_mask_0 = auto_tl_in_a_bits_mask;
  wire [63:0] auto_tl_in_a_bits_data_0 = auto_tl_in_a_bits_data;
  wire        auto_tl_in_a_bits_corrupt_0 = auto_tl_in_a_bits_corrupt;
  wire        auto_tl_in_d_ready_0 = auto_tl_in_d_ready;
  wire        auto_fragmenter_out_d_bits_sink = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        auto_fragmenter_out_d_bits_denied = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        auto_fragmenter_out_d_bits_corrupt = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        auto_tl_in_d_bits_sink = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        auto_tl_in_d_bits_denied = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        auto_tl_in_d_bits_corrupt = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        tlOut_d_bits_sink = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        tlOut_d_bits_denied = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        tlOut_d_bits_corrupt = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        tlIn_d_bits_sink = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        tlIn_d_bits_denied = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        tlIn_d_bits_corrupt = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire [1:0]  auto_fragmenter_out_d_bits_param = 2'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire [1:0]  auto_tl_in_d_bits_param = 2'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire [1:0]  tlOut_d_bits_param = 2'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire [1:0]  tlIn_d_bits_param = 2'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire [2:0]  auto_fragmenter_out_d_bits_opcode = 3'h1;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire [2:0]  auto_tl_in_d_bits_opcode = 3'h1;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire [2:0]  tlOut_d_bits_opcode = 3'h1;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire [2:0]  tlIn_d_bits_opcode = 3'h1;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17, src/main/scala/tilelink/Fragmenter.scala:335:34
  wire        tlIn_a_ready;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire        tlIn_a_valid = auto_tl_in_a_valid_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [2:0]  tlIn_a_bits_opcode = auto_tl_in_a_bits_opcode_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [2:0]  tlIn_a_bits_param = auto_tl_in_a_bits_param_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [2:0]  tlIn_a_bits_size = auto_tl_in_a_bits_size_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [4:0]  tlIn_a_bits_source = auto_tl_in_a_bits_source_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [16:0] tlIn_a_bits_address = auto_tl_in_a_bits_address_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [7:0]  tlIn_a_bits_mask = auto_tl_in_a_bits_mask_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [63:0] tlIn_a_bits_data = auto_tl_in_a_bits_data_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire        tlIn_a_bits_corrupt = auto_tl_in_a_bits_corrupt_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire        tlIn_d_ready = auto_tl_in_d_ready_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire        tlIn_d_valid;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [2:0]  tlIn_d_bits_size;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [4:0]  tlIn_d_bits_source;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [63:0] tlIn_d_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  assign tlIn_a_ready = tlOut_a_ready;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign tlIn_d_valid = tlOut_d_valid;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign tlIn_d_bits_size = tlOut_d_bits_size;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign tlIn_d_bits_source = tlOut_d_bits_source;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  assign tlIn_d_bits_data = tlOut_d_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire        auto_tl_in_a_ready_0 = tlIn_a_ready;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire        tlOut_a_valid = tlIn_a_valid;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire [2:0]  tlOut_a_bits_opcode = tlIn_a_bits_opcode;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire [2:0]  tlOut_a_bits_param = tlIn_a_bits_param;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire [2:0]  tlOut_a_bits_size = tlIn_a_bits_size;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire [4:0]  tlOut_a_bits_source = tlIn_a_bits_source;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire [16:0] tlOut_a_bits_address = tlIn_a_bits_address;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire [7:0]  tlOut_a_bits_mask = tlIn_a_bits_mask;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire [63:0] tlOut_a_bits_data = tlIn_a_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire        tlOut_a_bits_corrupt = tlIn_a_bits_corrupt;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire        tlOut_d_ready = tlIn_d_ready;	// src/main/scala/diplomacy/Nodes.scala:1205:17, :1214:17
  wire        auto_tl_in_d_valid_0 = tlIn_d_valid;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [2:0]  auto_tl_in_d_bits_size_0 = tlIn_d_bits_size;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [4:0]  auto_tl_in_d_bits_source_0 = tlIn_d_bits_source;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire [63:0] auto_tl_in_d_bits_data_0 = tlIn_d_bits_data;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  TLFragmenter_4 fragmenter (	// src/main/scala/tilelink/Fragmenter.scala:335:34
    .clock                   (clock),
    .reset                   (reset),
    .auto_in_a_ready         (tlOut_a_ready),
    .auto_in_a_valid         (tlOut_a_valid),	// src/main/scala/diplomacy/Nodes.scala:1205:17
    .auto_in_a_bits_opcode   (tlOut_a_bits_opcode),	// src/main/scala/diplomacy/Nodes.scala:1205:17
    .auto_in_a_bits_param    (tlOut_a_bits_param),	// src/main/scala/diplomacy/Nodes.scala:1205:17
    .auto_in_a_bits_size     (tlOut_a_bits_size),	// src/main/scala/diplomacy/Nodes.scala:1205:17
    .auto_in_a_bits_source   (tlOut_a_bits_source),	// src/main/scala/diplomacy/Nodes.scala:1205:17
    .auto_in_a_bits_address  (tlOut_a_bits_address),	// src/main/scala/diplomacy/Nodes.scala:1205:17
    .auto_in_a_bits_mask     (tlOut_a_bits_mask),	// src/main/scala/diplomacy/Nodes.scala:1205:17
    .auto_in_a_bits_data     (tlOut_a_bits_data),	// src/main/scala/diplomacy/Nodes.scala:1205:17
    .auto_in_a_bits_corrupt  (tlOut_a_bits_corrupt),	// src/main/scala/diplomacy/Nodes.scala:1205:17
    .auto_in_d_ready         (tlOut_d_ready),	// src/main/scala/diplomacy/Nodes.scala:1205:17
    .auto_in_d_valid         (tlOut_d_valid),
    .auto_in_d_bits_size     (tlOut_d_bits_size),
    .auto_in_d_bits_source   (tlOut_d_bits_source),
    .auto_in_d_bits_data     (tlOut_d_bits_data),
    .auto_out_a_ready        (auto_fragmenter_out_a_ready_0),
    .auto_out_a_valid        (auto_fragmenter_out_a_valid_0),
    .auto_out_a_bits_opcode  (auto_fragmenter_out_a_bits_opcode_0),
    .auto_out_a_bits_param   (auto_fragmenter_out_a_bits_param_0),
    .auto_out_a_bits_size    (auto_fragmenter_out_a_bits_size_0),
    .auto_out_a_bits_source  (auto_fragmenter_out_a_bits_source_0),
    .auto_out_a_bits_address (auto_fragmenter_out_a_bits_address_0),
    .auto_out_a_bits_mask    (auto_fragmenter_out_a_bits_mask_0),
    .auto_out_a_bits_data    (auto_fragmenter_out_a_bits_data_0),
    .auto_out_a_bits_corrupt (auto_fragmenter_out_a_bits_corrupt_0),
    .auto_out_d_ready        (auto_fragmenter_out_d_ready_0),
    .auto_out_d_valid        (auto_fragmenter_out_d_valid_0),
    .auto_out_d_bits_size    (auto_fragmenter_out_d_bits_size_0),
    .auto_out_d_bits_source  (auto_fragmenter_out_d_bits_source_0),
    .auto_out_d_bits_data    (auto_fragmenter_out_d_bits_data_0)
  );
  assign auto_fragmenter_out_a_valid = auto_fragmenter_out_a_valid_0;
  assign auto_fragmenter_out_a_bits_opcode = auto_fragmenter_out_a_bits_opcode_0;
  assign auto_fragmenter_out_a_bits_param = auto_fragmenter_out_a_bits_param_0;
  assign auto_fragmenter_out_a_bits_size = auto_fragmenter_out_a_bits_size_0;
  assign auto_fragmenter_out_a_bits_source = auto_fragmenter_out_a_bits_source_0;
  assign auto_fragmenter_out_a_bits_address = auto_fragmenter_out_a_bits_address_0;
  assign auto_fragmenter_out_a_bits_mask = auto_fragmenter_out_a_bits_mask_0;
  assign auto_fragmenter_out_a_bits_data = auto_fragmenter_out_a_bits_data_0;
  assign auto_fragmenter_out_a_bits_corrupt = auto_fragmenter_out_a_bits_corrupt_0;
  assign auto_fragmenter_out_d_ready = auto_fragmenter_out_d_ready_0;
  assign auto_tl_in_a_ready = auto_tl_in_a_ready_0;
  assign auto_tl_in_d_valid = auto_tl_in_d_valid_0;
  assign auto_tl_in_d_bits_size = auto_tl_in_d_bits_size_0;
  assign auto_tl_in_d_bits_source = auto_tl_in_d_bits_source_0;
  assign auto_tl_in_d_bits_data = auto_tl_in_d_bits_data_0;
endmodule

