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

module SourceA(
  input          clock,
                 reset,
  output         io_req_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  input          io_req_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  input  [14:0]  io_req_bits_tag,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  input  [9:0]   io_req_bits_set,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  input  [2:0]   io_req_bits_param,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
                 io_req_bits_source,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  input          io_req_bits_block,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
                 io_a_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  output         io_a_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  output [2:0]   io_a_bits_opcode,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
                 io_a_bits_param,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
                 io_a_bits_size,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
                 io_a_bits_source,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  output [31:0]  io_a_bits_address,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  output [15:0]  io_a_bits_mask,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  output [127:0] io_a_bits_data,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
  output         io_a_bits_corrupt	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:35:14
);

  wire         io_a_bits_corrupt_0;
  wire [127:0] io_a_bits_data_0;
  wire [15:0]  io_a_bits_mask_0;
  wire [31:0]  io_a_bits_address_0;
  wire [2:0]   io_a_bits_source_0;
  wire [2:0]   io_a_bits_size_0;
  wire [2:0]   io_a_bits_param_0;
  wire [2:0]   io_a_bits_opcode_0;
  wire         io_a_valid_0;
  wire         io_req_valid_0 = io_req_valid;
  wire [14:0]  io_req_bits_tag_0 = io_req_bits_tag;
  wire [9:0]   io_req_bits_set_0 = io_req_bits_set;
  wire [2:0]   io_req_bits_param_0 = io_req_bits_param;
  wire [2:0]   io_req_bits_source_0 = io_req_bits_source;
  wire         io_req_bits_block_0 = io_req_bits_block;
  wire         io_a_ready_0 = io_a_ready;
  wire [2:0]   a_bits_size = 3'h6;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15, :50:24
  wire         a_bits_corrupt = 1'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15, :48:28
  wire [15:0]  a_bits_mask = 16'hFFFF;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15, :55:21
  wire [127:0] a_bits_data = 128'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15, :56:18
  wire         a_ready;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
  wire [5:0]   a_bits_address_base_y_2 = 6'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:221:15
  wire         a_valid = io_req_valid_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
  wire [14:0]  a_bits_address_base_y = io_req_bits_tag_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:221:15
  wire [9:0]   a_bits_address_base_y_1 = io_req_bits_set_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:221:15
  wire [2:0]   a_bits_param = io_req_bits_param_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
  wire [2:0]   a_bits_source = io_req_bits_source_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
  wire         io_req_ready_0 = a_ready;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
  wire [2:0]   a_bits_opcode = {2'h3, ~io_req_bits_block_0};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15, :50:24
  wire [24:0]  a_bits_address_base_hi = {a_bits_address_base_y, a_bits_address_base_y_1};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:221:15, :227:19
  wire [30:0]  a_bits_address_base = {a_bits_address_base_hi, 6'h0};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:221:15, :227:19
  wire [1:0]   a_bits_address_lo_lo_lo_lo = a_bits_address_base[1:0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   a_bits_address_lo_lo_lo_hi = a_bits_address_base[3:2];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   a_bits_address_lo_lo_lo =
    {a_bits_address_lo_lo_lo_hi, a_bits_address_lo_lo_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   a_bits_address_lo_lo_hi_lo = a_bits_address_base[5:4];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   a_bits_address_lo_lo_hi_hi = a_bits_address_base[7:6];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   a_bits_address_lo_lo_hi =
    {a_bits_address_lo_lo_hi_hi, a_bits_address_lo_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [7:0]   a_bits_address_lo_lo = {a_bits_address_lo_lo_hi, a_bits_address_lo_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   a_bits_address_lo_hi_lo_lo = a_bits_address_base[9:8];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   a_bits_address_lo_hi_lo_hi = a_bits_address_base[11:10];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   a_bits_address_lo_hi_lo =
    {a_bits_address_lo_hi_lo_hi, a_bits_address_lo_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   a_bits_address_lo_hi_hi_lo = a_bits_address_base[13:12];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   a_bits_address_lo_hi_hi_hi = a_bits_address_base[15:14];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   a_bits_address_lo_hi_hi =
    {a_bits_address_lo_hi_hi_hi, a_bits_address_lo_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [7:0]   a_bits_address_lo_hi = {a_bits_address_lo_hi_hi, a_bits_address_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [15:0]  a_bits_address_lo = {a_bits_address_lo_hi, a_bits_address_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   a_bits_address_hi_lo_lo_lo = a_bits_address_base[17:16];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   a_bits_address_hi_lo_lo_hi = a_bits_address_base[19:18];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   a_bits_address_hi_lo_lo =
    {a_bits_address_hi_lo_lo_hi, a_bits_address_hi_lo_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   a_bits_address_hi_lo_hi_lo = a_bits_address_base[21:20];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   a_bits_address_hi_lo_hi_hi = a_bits_address_base[23:22];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   a_bits_address_hi_lo_hi =
    {a_bits_address_hi_lo_hi_hi, a_bits_address_hi_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [7:0]   a_bits_address_hi_lo = {a_bits_address_hi_lo_hi, a_bits_address_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   a_bits_address_hi_hi_lo_lo = a_bits_address_base[25:24];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   a_bits_address_hi_hi_lo_hi = a_bits_address_base[27:26];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   a_bits_address_hi_hi_lo =
    {a_bits_address_hi_hi_lo_hi, a_bits_address_hi_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   a_bits_address_hi_hi_hi_lo = a_bits_address_base[29:28];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   a_bits_address_hi_hi_hi_hi = {1'h0, a_bits_address_base[30]};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :229:72, :230:8, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:48:28
  wire [3:0]   a_bits_address_hi_hi_hi =
    {a_bits_address_hi_hi_hi_hi, a_bits_address_hi_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [7:0]   a_bits_address_hi_hi = {a_bits_address_hi_hi_hi, a_bits_address_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [15:0]  a_bits_address_hi = {a_bits_address_hi_hi, a_bits_address_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [31:0]  a_bits_address = {a_bits_address_hi, a_bits_address_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
  Queue_98 io_a_q (	// src/main/scala/chisel3/util/Decoupled.scala:376:21
    .clock               (clock),
    .reset               (reset),
    .io_enq_ready        (a_ready),
    .io_enq_valid        (a_valid),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
    .io_enq_bits_opcode  (a_bits_opcode),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
    .io_enq_bits_param   (a_bits_param),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
    .io_enq_bits_source  (a_bits_source),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
    .io_enq_bits_address (a_bits_address),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceA.scala:43:15
    .io_deq_ready        (io_a_ready_0),
    .io_deq_valid        (io_a_valid_0),
    .io_deq_bits_opcode  (io_a_bits_opcode_0),
    .io_deq_bits_param   (io_a_bits_param_0),
    .io_deq_bits_size    (io_a_bits_size_0),
    .io_deq_bits_source  (io_a_bits_source_0),
    .io_deq_bits_address (io_a_bits_address_0),
    .io_deq_bits_mask    (io_a_bits_mask_0),
    .io_deq_bits_data    (io_a_bits_data_0),
    .io_deq_bits_corrupt (io_a_bits_corrupt_0)
  );
  assign io_req_ready = io_req_ready_0;
  assign io_a_valid = io_a_valid_0;
  assign io_a_bits_opcode = io_a_bits_opcode_0;
  assign io_a_bits_param = io_a_bits_param_0;
  assign io_a_bits_size = io_a_bits_size_0;
  assign io_a_bits_source = io_a_bits_source_0;
  assign io_a_bits_address = io_a_bits_address_0;
  assign io_a_bits_mask = io_a_bits_mask_0;
  assign io_a_bits_data = io_a_bits_data_0;
  assign io_a_bits_corrupt = io_a_bits_corrupt_0;
endmodule

