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

module SourceC(
  input          clock,
                 reset,
  output         io_req_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  input          io_req_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  input  [2:0]   io_req_bits_opcode,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
                 io_req_bits_param,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
                 io_req_bits_source,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  input  [14:0]  io_req_bits_tag,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  input  [9:0]   io_req_bits_set,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  input  [2:0]   io_req_bits_way,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  input          io_req_bits_dirty,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
                 io_c_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output         io_c_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output [2:0]   io_c_bits_opcode,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
                 io_c_bits_param,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
                 io_c_bits_size,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
                 io_c_bits_source,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output [31:0]  io_c_bits_address,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output [255:0] io_c_bits_data,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output         io_c_bits_corrupt,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  input          io_bs_adr_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output         io_bs_adr_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output [2:0]   io_bs_adr_bits_way,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output [9:0]   io_bs_adr_bits_set,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output         io_bs_adr_bits_beat,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  input  [255:0] io_bs_dat_data,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output [9:0]   io_evict_req_set,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  output [2:0]   io_evict_req_way,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
  input          io_evict_safe	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:37:14
);

  wire         io_c_bits_corrupt_0;
  wire [255:0] io_c_bits_data_0;
  wire [31:0]  io_c_bits_address_0;
  wire [2:0]   io_c_bits_source_0;
  wire [2:0]   io_c_bits_size_0;
  wire [2:0]   io_c_bits_param_0;
  wire [2:0]   io_c_bits_opcode_0;
  wire         _queue_io_enq_ready;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:54:21
  wire         _queue_io_deq_valid;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:54:21
  wire [2:0]   _queue_io_count;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:54:21
  wire         io_req_valid_0 = io_req_valid;
  wire [2:0]   io_req_bits_opcode_0 = io_req_bits_opcode;
  wire [2:0]   io_req_bits_param_0 = io_req_bits_param;
  wire [2:0]   io_req_bits_source_0 = io_req_bits_source;
  wire [14:0]  io_req_bits_tag_0 = io_req_bits_tag;
  wire [9:0]   io_req_bits_set_0 = io_req_bits_set;
  wire [2:0]   io_req_bits_way_0 = io_req_bits_way;
  wire         io_req_bits_dirty_0 = io_req_bits_dirty;
  wire         io_c_ready_0 = io_c_ready;
  wire         io_bs_adr_ready_0 = io_bs_adr_ready;
  wire [255:0] io_bs_dat_data_0 = io_bs_dat_data;
  wire         io_evict_safe_0 = io_evict_safe;
  wire         io_bs_adr_bits_noop = 1'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:62:18
  wire         c_bits_corrupt = 1'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:62:18, :108:15
  wire [5:0]   c_bits_address_base_y_2 = 6'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:221:15
  wire [3:0]   io_bs_adr_bits_mask = 4'hF;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:82:26
  wire [2:0]   c_bits_size = 3'h6;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:108:15, :112:18
  wire [2:0]   req_way;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17
  wire [9:0]   req_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17
  wire [255:0] c_bits_data = io_bs_dat_data_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:108:15
  reg  [2:0]   fill;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21
  reg          room;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:59:21
  reg          busy;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21
  reg          beat;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:67:21
  wire         io_bs_adr_bits_beat_0 = beat;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:67:21
  wire         last = beat;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:67:21, :68:19
  reg  [2:0]   req_r_opcode;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
  reg  [2:0]   req_r_param;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
  reg  [2:0]   req_r_source;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
  reg  [14:0]  req_r_tag;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
  reg  [9:0]   req_r_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
  reg  [2:0]   req_r_way;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
  reg          req_r_dirty;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
  wire [2:0]   req_opcode = busy ? req_r_opcode : io_req_bits_opcode_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21, :69:{17,47}
  wire [2:0]   req_param = busy ? req_r_param : io_req_bits_param_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21, :69:{17,47}
  wire [2:0]   req_source = busy ? req_r_source : io_req_bits_source_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21, :69:{17,47}
  wire [14:0]  req_tag = busy ? req_r_tag : io_req_bits_tag_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21, :69:{17,47}
  assign req_set = busy ? req_r_set : io_req_bits_set_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21, :69:{17,47}
  assign req_way = busy ? req_r_way : io_req_bits_way_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21, :69:{17,47}
  wire         req_dirty = busy ? req_r_dirty : io_req_bits_dirty_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21, :69:{17,47}
  wire [9:0]   io_bs_adr_bits_set_0 = req_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17
  wire [9:0]   io_evict_req_set_0 = req_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17
  wire [2:0]   io_bs_adr_bits_way_0 = req_way;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17
  wire [2:0]   io_evict_req_way_0 = req_way;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17
  wire         _want_data_T = io_req_valid_0 & room;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:59:21, :70:41
  wire         want_data = busy | _want_data_T & io_req_bits_dirty_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21, :70:{24,41,49}
  wire         io_req_ready_0 = ~busy & room;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:59:21, :66:21, :69:18, :72:25
  wire         io_bs_adr_valid_0 = (beat | io_evict_safe_0) & want_data;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:67:21, :70:24, :77:{32,50}
  wire         _s2_latch_T = io_bs_adr_ready_0 & io_bs_adr_valid_0;	// src/main/scala/chisel3/util/Decoupled.scala:52:35
  wire         s2_latch = want_data ? _s2_latch_T : io_req_ready_0 & io_req_valid_0;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:70:24, :96:21
  reg          s2_valid;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:97:25
  reg  [2:0]   s2_req_opcode;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25
  reg  [2:0]   s2_req_param;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25
  reg  [2:0]   s2_req_source;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25
  reg  [14:0]  s2_req_tag;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25
  reg  [9:0]   s2_req_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25
  reg  [2:0]   s2_req_way;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25
  reg          s2_req_dirty;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25
  reg          s2_beat;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:99:26
  reg          s2_last;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:100:26
  reg          s3_valid;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:103:25
  wire         c_valid = s3_valid;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:103:25, :108:15
  reg  [2:0]   s3_req_opcode;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
  wire [2:0]   c_bits_opcode = s3_req_opcode;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25, :108:15
  reg  [2:0]   s3_req_param;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
  wire [2:0]   c_bits_param = s3_req_param;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25, :108:15
  reg  [2:0]   s3_req_source;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
  wire [2:0]   c_bits_source = s3_req_source;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25, :108:15
  reg  [14:0]  s3_req_tag;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
  wire [14:0]  c_bits_address_base_y = s3_req_tag;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:221:15, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
  reg  [9:0]   s3_req_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
  wire [9:0]   c_bits_address_base_y_1 = s3_req_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:221:15, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
  reg  [2:0]   s3_req_way;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
  reg          s3_req_dirty;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
  reg          s3_beat;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:105:26
  reg          s3_last;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:106:26
  wire [24:0]  c_bits_address_base_hi = {c_bits_address_base_y, c_bits_address_base_y_1};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:221:15, :227:19
  wire [30:0]  c_bits_address_base = {c_bits_address_base_hi, 6'h0};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:221:15, :227:19
  wire [1:0]   c_bits_address_lo_lo_lo_lo = c_bits_address_base[1:0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   c_bits_address_lo_lo_lo_hi = c_bits_address_base[3:2];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   c_bits_address_lo_lo_lo =
    {c_bits_address_lo_lo_lo_hi, c_bits_address_lo_lo_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   c_bits_address_lo_lo_hi_lo = c_bits_address_base[5:4];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   c_bits_address_lo_lo_hi_hi = c_bits_address_base[7:6];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   c_bits_address_lo_lo_hi =
    {c_bits_address_lo_lo_hi_hi, c_bits_address_lo_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [7:0]   c_bits_address_lo_lo = {c_bits_address_lo_lo_hi, c_bits_address_lo_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   c_bits_address_lo_hi_lo_lo = c_bits_address_base[9:8];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   c_bits_address_lo_hi_lo_hi = c_bits_address_base[11:10];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   c_bits_address_lo_hi_lo =
    {c_bits_address_lo_hi_lo_hi, c_bits_address_lo_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   c_bits_address_lo_hi_hi_lo = c_bits_address_base[13:12];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   c_bits_address_lo_hi_hi_hi = c_bits_address_base[15:14];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   c_bits_address_lo_hi_hi =
    {c_bits_address_lo_hi_hi_hi, c_bits_address_lo_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [7:0]   c_bits_address_lo_hi = {c_bits_address_lo_hi_hi, c_bits_address_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [15:0]  c_bits_address_lo = {c_bits_address_lo_hi, c_bits_address_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   c_bits_address_hi_lo_lo_lo = c_bits_address_base[17:16];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   c_bits_address_hi_lo_lo_hi = c_bits_address_base[19:18];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   c_bits_address_hi_lo_lo =
    {c_bits_address_hi_lo_lo_hi, c_bits_address_hi_lo_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   c_bits_address_hi_lo_hi_lo = c_bits_address_base[21:20];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   c_bits_address_hi_lo_hi_hi = c_bits_address_base[23:22];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   c_bits_address_hi_lo_hi =
    {c_bits_address_hi_lo_hi_hi, c_bits_address_hi_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [7:0]   c_bits_address_hi_lo = {c_bits_address_hi_lo_hi, c_bits_address_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   c_bits_address_hi_hi_lo_lo = c_bits_address_base[25:24];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   c_bits_address_hi_hi_lo_hi = c_bits_address_base[27:26];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [3:0]   c_bits_address_hi_hi_lo =
    {c_bits_address_hi_hi_lo_hi, c_bits_address_hi_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [1:0]   c_bits_address_hi_hi_hi_lo = c_bits_address_base[29:28];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :230:8
  wire [1:0]   c_bits_address_hi_hi_hi_hi = {1'h0, c_bits_address_base[30]};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:227:19, :229:72, :230:8, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:62:18
  wire [3:0]   c_bits_address_hi_hi_hi =
    {c_bits_address_hi_hi_hi_hi, c_bits_address_hi_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [7:0]   c_bits_address_hi_hi = {c_bits_address_hi_hi_hi, c_bits_address_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire [15:0]  c_bits_address_hi = {c_bits_address_hi_hi, c_bits_address_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8
  wire         c_ready;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:108:15
  wire [31:0]  c_bits_address = {c_bits_address_hi, c_bits_address_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:230:8, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:108:15
  `ifndef SYNTHESIS	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:64:10
    always @(posedge clock) begin	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:64:10
      if (~reset & room != (_queue_io_count < 3'h2)) begin	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:54:21, :59:21, :62:52, :64:{10,16,35}
        if (`ASSERT_VERBOSE_COND_)	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:64:10
          $error("Assertion failed\n    at SourceC.scala:64 assert (room === queue.io.count <= 1.U)\n");	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:64:10
        if (`STOP_COND_)	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:64:10
          $fatal;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:64:10
      end
      if (~reset & ~(~c_valid | c_ready)) begin	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:64:10, :108:15, :119:{9,10,19}
        if (`ASSERT_VERBOSE_COND_)	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:119:9
          $error("Assertion failed\n    at SourceC.scala:119 assert(!c.valid || c.ready)\n");	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:119:9
        if (`STOP_COND_)	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:119:9
          $fatal;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:119:9
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      fill <= 3'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21
      room <= 1'h1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:59:21
      busy <= 1'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:62:18, :66:21
      beat <= 1'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:62:18, :67:21
    end
    else begin
      automatic logic _room_T_4;	// src/main/scala/chisel3/util/Decoupled.scala:52:35
      _room_T_4 = _queue_io_enq_ready & c_valid;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:54:21, :108:15
      if (~(_room_T_4 == (io_c_ready_0 & _queue_io_deq_valid))) begin	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:54:21, :58:21, :60:{27,50}, :61:10
        fill <= fill + (_room_T_4 ? 3'h1 : 3'h7);	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21, :61:{18,23,48}
        room <= fill == 3'h0 | (fill == 3'h1 | fill == 3'h2) & ~_room_T_4;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21, :59:21, :62:{18,26,36,44,52,61,64}
      end
      busy <= ~(_s2_latch_T & last) & (_want_data_T & io_req_bits_dirty_0 | busy);	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21, :68:19, :70:41, :87:{30,52,59}, :88:25, :90:17, :91:12
      if (_s2_latch_T)	// src/main/scala/chisel3/util/Decoupled.scala:52:35
        beat <= ~last & beat - 1'h1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:67:21, :68:19, :89:{10,18}, :90:17, :92:12
    end
    if (~busy & io_req_valid_0) begin	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:66:21, :69:{18,67}
      req_r_opcode <= io_req_bits_opcode_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
      req_r_param <= io_req_bits_param_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
      req_r_source <= io_req_bits_source_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
      req_r_tag <= io_req_bits_tag_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
      req_r_set <= io_req_bits_set_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
      req_r_way <= io_req_bits_way_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
      req_r_dirty <= io_req_bits_dirty_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
    end
    s2_valid <= s2_latch;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:96:21, :97:25
    if (s2_latch) begin	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:96:21
      s2_req_opcode <= req_opcode;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17, :98:25
      s2_req_param <= req_param;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17, :98:25
      s2_req_source <= req_source;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17, :98:25
      s2_req_tag <= req_tag;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17, :98:25
      s2_req_set <= req_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17, :98:25
      s2_req_way <= req_way;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17, :98:25
      s2_req_dirty <= req_dirty;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:17, :98:25
      s2_beat <= beat;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:67:21, :99:26
      s2_last <= last;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:68:19, :100:26
    end
    s3_valid <= s2_valid;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:97:25, :103:25
    if (s2_valid) begin	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:97:25
      s3_req_opcode <= s2_req_opcode;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
      s3_req_param <= s2_req_param;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
      s3_req_source <= s2_req_source;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
      s3_req_tag <= s2_req_tag;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
      s3_req_set <= s2_req_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
      s3_req_way <= s2_req_way;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
      s3_req_dirty <= s2_req_dirty;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
      s3_beat <= s2_beat;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:99:26, :105:26
      s3_last <= s2_last;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:100:26, :106:26
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_
    `ifdef FIRRTL_BEFORE_INITIAL
      `FIRRTL_BEFORE_INITIAL
    `endif // FIRRTL_BEFORE_INITIAL
    initial begin
      automatic logic [31:0] _RANDOM[0:3];
      `ifdef INIT_RANDOM_PROLOG_
        `INIT_RANDOM_PROLOG_
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT
        for (logic [2:0] i = 3'h0; i < 3'h4; i += 3'h1) begin
          _RANDOM[i[1:0]] = `RANDOM;
        end
        fill = _RANDOM[2'h0][2:0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21
        room = _RANDOM[2'h0][3];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21, :59:21
        busy = _RANDOM[2'h0][4];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21, :66:21
        beat = _RANDOM[2'h0][5];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21, :67:21
        req_r_opcode = _RANDOM[2'h0][8:6];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21, :69:47
        req_r_param = _RANDOM[2'h0][11:9];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21, :69:47
        req_r_source = _RANDOM[2'h0][14:12];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21, :69:47
        req_r_tag = _RANDOM[2'h0][29:15];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21, :69:47
        req_r_set = {_RANDOM[2'h0][31:30], _RANDOM[2'h1][7:0]};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:58:21, :69:47
        req_r_way = _RANDOM[2'h1][10:8];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
        req_r_dirty = _RANDOM[2'h1][11];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47
        s2_valid = _RANDOM[2'h1][12];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47, :97:25
        s2_req_opcode = _RANDOM[2'h1][15:13];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47, :98:25
        s2_req_param = _RANDOM[2'h1][18:16];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47, :98:25
        s2_req_source = _RANDOM[2'h1][21:19];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47, :98:25
        s2_req_tag = {_RANDOM[2'h1][31:22], _RANDOM[2'h2][4:0]};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:69:47, :98:25
        s2_req_set = _RANDOM[2'h2][14:5];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25
        s2_req_way = _RANDOM[2'h2][17:15];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25
        s2_req_dirty = _RANDOM[2'h2][18];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25
        s2_beat = _RANDOM[2'h2][19];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :99:26
        s2_last = _RANDOM[2'h2][20];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :100:26
        s3_valid = _RANDOM[2'h2][21];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :103:25
        s3_req_opcode = _RANDOM[2'h2][24:22];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
        s3_req_param = _RANDOM[2'h2][27:25];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
        s3_req_source = _RANDOM[2'h2][30:28];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
        s3_req_tag = {_RANDOM[2'h2][31], _RANDOM[2'h3][13:0]};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:98:25, :104:25
        s3_req_set = _RANDOM[2'h3][23:14];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
        s3_req_way = _RANDOM[2'h3][26:24];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
        s3_req_dirty = _RANDOM[2'h3][27];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25
        s3_beat = _RANDOM[2'h3][28];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25, :105:26
        s3_last = _RANDOM[2'h3][29];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:104:25, :106:26
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  Queue_75 queue (	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:54:21
    .clock               (clock),
    .reset               (reset),
    .io_enq_ready        (_queue_io_enq_ready),
    .io_enq_valid        (c_valid),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:108:15
    .io_enq_bits_opcode  (c_bits_opcode),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:108:15
    .io_enq_bits_param   (c_bits_param),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:108:15
    .io_enq_bits_source  (c_bits_source),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:108:15
    .io_enq_bits_address (c_bits_address),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:108:15
    .io_enq_bits_data    (c_bits_data),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:108:15
    .io_deq_ready        (io_c_ready_0),
    .io_deq_valid        (_queue_io_deq_valid),
    .io_deq_bits_opcode  (io_c_bits_opcode_0),
    .io_deq_bits_param   (io_c_bits_param_0),
    .io_deq_bits_size    (io_c_bits_size_0),
    .io_deq_bits_source  (io_c_bits_source_0),
    .io_deq_bits_address (io_c_bits_address_0),
    .io_deq_bits_data    (io_c_bits_data_0),
    .io_deq_bits_corrupt (io_c_bits_corrupt_0),
    .io_count            (_queue_io_count)
  );
  wire         io_c_valid_0;
  assign io_c_valid_0 = _queue_io_deq_valid;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:54:21
  assign c_ready = _queue_io_enq_ready;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SourceC.scala:54:21, :108:15
  assign io_req_ready = io_req_ready_0;
  assign io_c_valid = io_c_valid_0;
  assign io_c_bits_opcode = io_c_bits_opcode_0;
  assign io_c_bits_param = io_c_bits_param_0;
  assign io_c_bits_size = io_c_bits_size_0;
  assign io_c_bits_source = io_c_bits_source_0;
  assign io_c_bits_address = io_c_bits_address_0;
  assign io_c_bits_data = io_c_bits_data_0;
  assign io_c_bits_corrupt = io_c_bits_corrupt_0;
  assign io_bs_adr_valid = io_bs_adr_valid_0;
  assign io_bs_adr_bits_way = io_bs_adr_bits_way_0;
  assign io_bs_adr_bits_set = io_bs_adr_bits_set_0;
  assign io_bs_adr_bits_beat = io_bs_adr_bits_beat_0;
  assign io_evict_req_set = io_evict_req_set_0;
  assign io_evict_req_way = io_evict_req_way_0;
endmodule

