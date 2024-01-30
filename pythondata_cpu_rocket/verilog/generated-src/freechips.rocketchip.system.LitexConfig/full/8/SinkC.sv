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

module SinkC(
  input         clock,
                reset,
                io_req_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output        io_req_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [2:0]  io_req_bits_opcode,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
                io_req_bits_param,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
                io_req_bits_size,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [5:0]  io_req_bits_source,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [14:0] io_req_bits_tag,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [5:0]  io_req_bits_offset,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
                io_req_bits_put,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [9:0]  io_req_bits_set,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output        io_resp_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
                io_resp_bits_last,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [9:0]  io_resp_bits_set,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [14:0] io_resp_bits_tag,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [5:0]  io_resp_bits_source,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [2:0]  io_resp_bits_param,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output        io_resp_bits_data,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
                io_c_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input         io_c_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input  [2:0]  io_c_bits_opcode,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
                io_c_bits_param,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
                io_c_bits_size,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input  [5:0]  io_c_bits_source,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input  [31:0] io_c_bits_address,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input  [63:0] io_c_bits_data,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input         io_c_bits_corrupt,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [9:0]  io_set,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input  [2:0]  io_way,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input         io_bs_adr_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output        io_bs_adr_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
                io_bs_adr_bits_noop,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [2:0]  io_bs_adr_bits_way,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [9:0]  io_bs_adr_bits_set,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [2:0]  io_bs_adr_bits_beat,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output        io_bs_adr_bits_mask,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [63:0] io_bs_dat_data,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output        io_rel_pop_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input         io_rel_pop_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input  [5:0]  io_rel_pop_bits_index,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  input         io_rel_pop_bits_last,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output [63:0] io_rel_beat_data,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
  output        io_rel_beat_corrupt	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:43:14
);

  wire        io_rel_beat_corrupt_0;
  wire [63:0] io_rel_beat_data_0;
  wire        io_bs_adr_bits_mask_0;
  wire [2:0]  io_bs_adr_bits_beat_0;
  wire [9:0]  io_bs_adr_bits_set_0;
  wire [2:0]  io_bs_adr_bits_way_0;
  wire        io_bs_adr_bits_noop_0;
  wire        io_bs_adr_valid_0;
  wire        io_c_ready_0;
  wire        _q_io_deq_ready_T_7;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:134:19
  wire [9:0]  io_set_0;
  wire        _putbuffer_io_push_ready;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:115:27
  wire [1:0]  _putbuffer_io_valid;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:115:27
  wire        _c_q_io_deq_valid;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [2:0]  _c_q_io_deq_bits_opcode;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [2:0]  _c_q_io_deq_bits_param;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [2:0]  _c_q_io_deq_bits_size;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [5:0]  _c_q_io_deq_bits_source;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [31:0] _c_q_io_deq_bits_address;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [63:0] _c_q_io_deq_bits_data;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire        _c_q_io_deq_bits_corrupt;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire        io_req_ready_0 = io_req_ready;
  wire        io_c_valid_0 = io_c_valid;
  wire [2:0]  io_c_bits_opcode_0 = io_c_bits_opcode;
  wire [2:0]  io_c_bits_param_0 = io_c_bits_param;
  wire [2:0]  io_c_bits_size_0 = io_c_bits_size;
  wire [5:0]  io_c_bits_source_0 = io_c_bits_source;
  wire [31:0] io_c_bits_address_0 = io_c_bits_address;
  wire [63:0] io_c_bits_data_0 = io_c_bits_data;
  wire        io_c_bits_corrupt_0 = io_c_bits_corrupt;
  wire [2:0]  io_way_0 = io_way;
  wire        io_bs_adr_ready_0 = io_bs_adr_ready;
  wire        io_rel_pop_valid_0 = io_rel_pop_valid;
  wire [5:0]  io_rel_pop_bits_index_0 = io_rel_pop_bits_index;
  wire        io_rel_pop_bits_last_0 = io_rel_pop_bits_last;
  wire        io_req_bits_prio_0 = 1'h0;	// src/main/scala/tilelink/Edges.scala:222:14
  wire        io_req_bits_prio_1 = 1'h0;	// src/main/scala/tilelink/Edges.scala:222:14
  wire        io_req_bits_control = 1'h0;	// src/main/scala/tilelink/Edges.scala:222:14
  wire        io_req_bits_prio_2 = 1'h1;	// src/main/scala/tilelink/Edges.scala:231:28
  wire        bs_adr_bits_mask = 1'h1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22, src/main/scala/tilelink/Edges.scala:231:28
  wire [14:0] tag_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:9
  wire [5:0]  offset_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:50
  wire [9:0]  set_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:28
  wire        last;	// src/main/scala/tilelink/Edges.scala:233:33
  wire        hasData;	// src/main/scala/tilelink/Edges.scala:103:36
  wire [9:0]  bs_adr_bits_set = io_set_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22
  wire [2:0]  bs_adr_bits_way = io_way_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22
  wire [1:0]  offset_lo_lo_lo_hi = _c_q_io_deq_bits_address[2:1];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [2:0]  offset_lo_lo_lo = {offset_lo_lo_lo_hi, _c_q_io_deq_bits_address[0]};	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:{21,47}
  wire [1:0]  offset_lo_lo_hi_lo = _c_q_io_deq_bits_address[4:3];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_lo_lo_hi_hi = _c_q_io_deq_bits_address[6:5];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_lo_lo_hi = {offset_lo_lo_hi_hi, offset_lo_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [6:0]  offset_lo_lo = {offset_lo_lo_hi, offset_lo_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_lo_hi_lo_lo = _c_q_io_deq_bits_address[8:7];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_lo_hi_lo_hi = _c_q_io_deq_bits_address[10:9];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_lo_hi_lo = {offset_lo_hi_lo_hi, offset_lo_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_lo_hi_hi_lo = _c_q_io_deq_bits_address[12:11];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_lo_hi_hi_hi = _c_q_io_deq_bits_address[14:13];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_lo_hi_hi = {offset_lo_hi_hi_hi, offset_lo_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [7:0]  offset_lo_hi = {offset_lo_hi_hi, offset_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [14:0] offset_lo = {offset_lo_hi, offset_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_lo_lo_lo = _c_q_io_deq_bits_address[16:15];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_lo_lo_hi = _c_q_io_deq_bits_address[18:17];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_hi_lo_lo = {offset_hi_lo_lo_hi, offset_hi_lo_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_lo_hi_lo = _c_q_io_deq_bits_address[20:19];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_lo_hi_hi = _c_q_io_deq_bits_address[22:21];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_hi_lo_hi = {offset_hi_lo_hi_hi, offset_hi_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [7:0]  offset_hi_lo = {offset_hi_lo_hi, offset_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_hi_lo_lo = _c_q_io_deq_bits_address[24:23];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_hi_lo_hi = _c_q_io_deq_bits_address[26:25];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_hi_hi_lo = {offset_hi_hi_lo_hi, offset_hi_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_hi_hi_lo = _c_q_io_deq_bits_address[28:27];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_hi_hi_hi = _c_q_io_deq_bits_address[30:29];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_hi_hi_hi = {offset_hi_hi_hi_hi, offset_hi_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [7:0]  offset_hi_hi = {offset_hi_hi_hi, offset_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [15:0] offset_hi = {offset_hi_hi, offset_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [30:0] offset = {offset_hi, offset_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [24:0] set = offset[30:6];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21, :215:22
  wire [14:0] tag = set[24:10];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:215:22, :216:19
  assign tag_1 = tag;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:216:19, :217:9
  wire [14:0] io_req_bits_tag_0 = tag_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:9
  wire [14:0] io_resp_bits_tag_0 = tag_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:9
  assign set_1 = set[9:0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:215:22, :217:28
  wire [9:0]  io_req_bits_set_0 = set_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:28
  wire [9:0]  io_resp_bits_set_0 = set_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:28
  assign offset_1 = offset[5:0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21, :217:50
  wire [5:0]  io_req_bits_offset_0 = offset_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:50
  wire        _GEN = _q_io_deq_ready_T_7 & _c_q_io_deq_valid;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, :376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:134:19
  wire [12:0] _beats1_decode_T_1 = 13'h3F << _c_q_io_deq_bits_size;	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/util/package.scala:235:71
  wire [2:0]  beats1_decode = ~(_beats1_decode_T_1[5:3]);	// src/main/scala/tilelink/Edges.scala:221:59, src/main/scala/util/package.scala:235:{46,71,76}
  wire        beats1_opdata = _c_q_io_deq_bits_opcode[0];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/tilelink/Edges.scala:103:36
  assign hasData = _c_q_io_deq_bits_opcode[0];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/tilelink/Edges.scala:103:36
  wire [2:0]  beats1 = beats1_opdata ? beats1_decode : 3'h0;	// src/main/scala/tilelink/Edges.scala:103:36, :221:59, :222:14, :230:27
  reg  [2:0]  counter;	// src/main/scala/tilelink/Edges.scala:230:27
  wire [2:0]  counter1 = counter - 3'h1;	// src/main/scala/tilelink/Edges.scala:230:27, :231:28
  wire        first = counter == 3'h0;	// src/main/scala/tilelink/Edges.scala:230:27, :232:25
  assign last = counter == 3'h1 | beats1 == 3'h0;	// src/main/scala/tilelink/Edges.scala:222:14, :230:27, :233:{25,33,43}
  wire        io_resp_bits_last_0 = last;	// src/main/scala/tilelink/Edges.scala:233:33
  wire        done = last & _GEN;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/tilelink/Edges.scala:233:33, :234:22
  wire [2:0]  beat = beats1 & ~counter1;	// src/main/scala/tilelink/Edges.scala:222:14, :231:28, :235:{25,27}
  wire        io_resp_bits_data_0 = hasData;	// src/main/scala/tilelink/Edges.scala:103:36
  wire        raw_resp =
    _c_q_io_deq_bits_opcode == 3'h4 | _c_q_io_deq_bits_opcode == 3'h5;	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:78:{34,58,75}
  reg         resp_r;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:79:48
  wire        resp = _c_q_io_deq_valid ? raw_resp : resp_r;	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:78:58, :79:{19,48}
  `ifndef SYNTHESIS	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:90:12
    always @(posedge clock) begin	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:90:12
      if (~reset & _c_q_io_deq_valid & _c_q_io_deq_bits_corrupt) begin	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:90:12
        if (`ASSERT_VERBOSE_COND_)	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:90:12
          $error("Assertion failed: Data poisoning unavailable\n    at SinkC.scala:90 assert (!(c.valid && c.bits.corrupt), \"Data poisoning unavailable\")\n");	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:90:12
        if (`STOP_COND_)	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:90:12
          $fatal;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:90:12
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  reg  [9:0]  io_set_r;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:92:42
  assign io_set_0 = _c_q_io_deq_valid ? set_1 : io_set_r;	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:28, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:92:{18,42}
  reg  [63:0] io_bs_dat_data_r;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:98:34
  wire [63:0] io_bs_dat_data_0 = io_bs_dat_data_r;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:98:34
  wire        bs_adr_valid = resp & (~first | _c_q_io_deq_valid & hasData);	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:79:19, :96:22, :99:{30,34,41,53}, src/main/scala/tilelink/Edges.scala:103:36, :232:25
  wire        bs_adr_bits_noop = ~_c_q_io_deq_valid;	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22, :100:25
  reg  [2:0]  bs_adr_bits_beat_r;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:103:53
  wire [2:0]  bs_adr_bits_beat = _c_q_io_deq_valid ? beat : bs_adr_bits_beat_r;	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22, :103:{28,53}, src/main/scala/tilelink/Edges.scala:235:25
  wire        bs_adr_ready;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22
  wire        io_resp_valid_0 =
    resp & _c_q_io_deq_valid & (first | last) & (~hasData | bs_adr_ready);	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:79:19, :96:22, :107:{48,57,61,70}, src/main/scala/tilelink/Edges.scala:103:36, :232:25, :233:33
  reg  [1:0]  lists;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:116:24
  wire        free = lists != 2'h3;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:116:24, :122:{16,23}
  wire [1:0]  _freeOH_T_7 = ~lists;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:116:24, :123:27
  wire [2:0]  freeOH = {1'h0, {~(_freeOH_T_7[0]), 1'h1} & _freeOH_T_7};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:123:{18,27,41}, src/main/scala/tilelink/Edges.scala:222:14, :231:28
  wire        freeIdx_hi = freeOH[2];	// src/main/scala/chisel3/util/OneHot.scala:30:18, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:123:41
  wire [1:0]  freeIdx_lo = freeOH[1:0];	// src/main/scala/chisel3/util/OneHot.scala:31:18, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:123:41
  wire [1:0]  freeIdx = {freeIdx_hi, freeIdx_lo[1]};	// src/main/scala/chisel3/util/OneHot.scala:30:18, :31:18, :32:10
  wire        req_block = first & ~io_req_ready_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:126:{27,30}, src/main/scala/tilelink/Edges.scala:232:25
  wire        buf_block = hasData & ~_putbuffer_io_push_ready;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:115:27, :127:{29,32}, src/main/scala/tilelink/Edges.scala:103:36
  wire        set_block = hasData & first & ~free;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:122:16, :128:{38,41}, src/main/scala/tilelink/Edges.scala:103:36, :232:25
  assign _q_io_deq_ready_T_7 =
    raw_resp ? ~hasData | bs_adr_ready : ~req_block & ~buf_block & ~set_block;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:78:58, :96:22, :107:61, :126:27, :127:29, :128:38, :134:{19,39,56,70,81,84}, src/main/scala/tilelink/Edges.scala:103:36
  wire        io_req_valid_0 =
    ~resp & _c_q_io_deq_valid & first & ~buf_block & ~set_block;	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:79:19, :127:29, :128:38, :134:{70,84}, :136:{21,61}, src/main/scala/tilelink/Edges.scala:232:25
  wire [1:0]  lists_set =
    ~resp & _c_q_io_deq_valid & first & hasData & ~req_block & ~buf_block
      ? freeIdx_lo
      : 2'h0;	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/chisel3/util/OneHot.scala:31:18, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:79:19, :118:29, :126:27, :127:29, :134:{56,70}, :136:21, :138:{62,77,89}, src/main/scala/tilelink/Edges.scala:103:36, :232:25
  reg  [1:0]  put_r;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:140:44
  wire [1:0]  put = first ? freeIdx : put_r;	// src/main/scala/chisel3/util/OneHot.scala:32:10, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:140:{18,44}, src/main/scala/tilelink/Edges.scala:232:25
  wire [5:0]  io_req_bits_put_0 = {4'h0, put};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:140:18, :151:24
  wire        io_rel_pop_ready_0;
  wire        lists_clr_shiftAmount = io_rel_pop_bits_index_0[0];	// src/main/scala/chisel3/util/OneHot.scala:64:49, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:158:27
  wire        _putbuffer_io_pop_valid_T = io_rel_pop_ready_0 & io_rel_pop_valid_0;	// src/main/scala/chisel3/util/Decoupled.scala:52:35
  wire [5:0]  _io_rel_pop_ready_T =
    {4'h0, _putbuffer_io_valid} >> io_rel_pop_bits_index_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:115:27, :151:24, :160:43
  assign io_rel_pop_ready_0 = _io_rel_pop_ready_T[0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:160:43
  wire [1:0]  lists_clr =
    _putbuffer_io_pop_valid_T & io_rel_pop_bits_last_0
      ? 2'h1 << lists_clr_shiftAmount
      : 2'h0;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/chisel3/util/OneHot.scala:64:49, :65:12, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:119:29, :163:{27,52}, :164:17
  always @(posedge clock) begin
    if (reset) begin
      counter <= 3'h0;	// src/main/scala/tilelink/Edges.scala:230:27
      lists <= 2'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:116:24
    end
    else begin
      if (_GEN) begin	// src/main/scala/chisel3/util/Decoupled.scala:52:35
        if (first)	// src/main/scala/tilelink/Edges.scala:232:25
          counter <= beats1;	// src/main/scala/tilelink/Edges.scala:222:14, :230:27
        else	// src/main/scala/tilelink/Edges.scala:232:25
          counter <= counter1;	// src/main/scala/tilelink/Edges.scala:230:27, :231:28
      end
      lists <= (lists | lists_set) & ~lists_clr;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:116:24, :118:29, :119:29, :120:{21,34,36}
    end
    if (_c_q_io_deq_valid) begin	// src/main/scala/chisel3/util/Decoupled.scala:376:21
      resp_r <= raw_resp;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:78:58, :79:48
      io_set_r <= set_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:28, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:92:42
      bs_adr_bits_beat_r <= beat + {2'h0, bs_adr_ready};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22, :103:{53,59}, src/main/scala/tilelink/Edges.scala:235:25
    end
    if (bs_adr_ready & bs_adr_valid)	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22
      io_bs_dat_data_r <= _c_q_io_deq_bits_data;	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:98:34
    if (first)	// src/main/scala/tilelink/Edges.scala:232:25
      put_r <= freeIdx;	// src/main/scala/chisel3/util/OneHot.scala:32:10, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:140:44
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_
    `ifdef FIRRTL_BEFORE_INITIAL
      `FIRRTL_BEFORE_INITIAL
    `endif // FIRRTL_BEFORE_INITIAL
    initial begin
      automatic logic [31:0] _RANDOM[0:2];
      `ifdef INIT_RANDOM_PROLOG_
        `INIT_RANDOM_PROLOG_
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT
        for (logic [1:0] i = 2'h0; i < 2'h3; i += 2'h1) begin
          _RANDOM[i] = `RANDOM;
        end
        counter = _RANDOM[2'h0][2:0];	// src/main/scala/tilelink/Edges.scala:230:27
        resp_r = _RANDOM[2'h0][3];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:79:48, src/main/scala/tilelink/Edges.scala:230:27
        io_set_r = _RANDOM[2'h0][13:4];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:92:42, src/main/scala/tilelink/Edges.scala:230:27
        io_bs_dat_data_r = {_RANDOM[2'h0][31:14], _RANDOM[2'h1], _RANDOM[2'h2][13:0]};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:98:34, src/main/scala/tilelink/Edges.scala:230:27
        bs_adr_bits_beat_r = _RANDOM[2'h2][16:14];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:98:34, :103:53
        lists = _RANDOM[2'h2][18:17];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:98:34, :116:24
        put_r = _RANDOM[2'h2][20:19];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:98:34, :140:44
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  Queue_103 c_q (	// src/main/scala/chisel3/util/Decoupled.scala:376:21
    .clock               (clock),
    .reset               (reset),
    .io_enq_ready        (io_c_ready_0),
    .io_enq_valid        (io_c_valid_0),
    .io_enq_bits_opcode  (io_c_bits_opcode_0),
    .io_enq_bits_param   (io_c_bits_param_0),
    .io_enq_bits_size    (io_c_bits_size_0),
    .io_enq_bits_source  (io_c_bits_source_0),
    .io_enq_bits_address (io_c_bits_address_0),
    .io_enq_bits_data    (io_c_bits_data_0),
    .io_enq_bits_corrupt (io_c_bits_corrupt_0),
    .io_deq_ready        (_q_io_deq_ready_T_7),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:134:19
    .io_deq_valid        (_c_q_io_deq_valid),
    .io_deq_bits_opcode  (_c_q_io_deq_bits_opcode),
    .io_deq_bits_param   (_c_q_io_deq_bits_param),
    .io_deq_bits_size    (_c_q_io_deq_bits_size),
    .io_deq_bits_source  (_c_q_io_deq_bits_source),
    .io_deq_bits_address (_c_q_io_deq_bits_address),
    .io_deq_bits_data    (_c_q_io_deq_bits_data),
    .io_deq_bits_corrupt (_c_q_io_deq_bits_corrupt)
  );
  wire [2:0]  io_req_bits_opcode_0;
  assign io_req_bits_opcode_0 = _c_q_io_deq_bits_opcode;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [2:0]  io_req_bits_param_0;
  assign io_req_bits_param_0 = _c_q_io_deq_bits_param;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [2:0]  io_req_bits_size_0;
  assign io_req_bits_size_0 = _c_q_io_deq_bits_size;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [5:0]  io_req_bits_source_0;
  assign io_req_bits_source_0 = _c_q_io_deq_bits_source;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [5:0]  io_resp_bits_source_0;
  assign io_resp_bits_source_0 = _c_q_io_deq_bits_source;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire [2:0]  io_resp_bits_param_0;
  assign io_resp_bits_param_0 = _c_q_io_deq_bits_param;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  Queue_104 io_bs_adr_q (	// src/main/scala/chisel3/util/Decoupled.scala:376:21
    .clock            (clock),
    .reset            (reset),
    .io_enq_ready     (bs_adr_ready),
    .io_enq_valid     (bs_adr_valid),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22
    .io_enq_bits_noop (bs_adr_bits_noop),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22
    .io_enq_bits_way  (bs_adr_bits_way),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22
    .io_enq_bits_set  (bs_adr_bits_set),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22
    .io_enq_bits_beat (bs_adr_bits_beat),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:96:22
    .io_deq_ready     (io_bs_adr_ready_0),
    .io_deq_valid     (io_bs_adr_valid_0),
    .io_deq_bits_noop (io_bs_adr_bits_noop_0),
    .io_deq_bits_way  (io_bs_adr_bits_way_0),
    .io_deq_bits_set  (io_bs_adr_bits_set_0),
    .io_deq_bits_beat (io_bs_adr_bits_beat_0),
    .io_deq_bits_mask (io_bs_adr_bits_mask_0)
  );
  ListBuffer_1 putbuffer (	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:115:27
    .clock                     (clock),
    .reset                     (reset),
    .io_push_ready             (_putbuffer_io_push_ready),
    .io_push_valid
      (~resp & _c_q_io_deq_valid & hasData & ~req_block & ~set_block),	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:79:19, :126:27, :128:38, :134:{56,84}, :136:21, :137:74, src/main/scala/tilelink/Edges.scala:103:36
    .io_push_bits_index        (put[0]),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkC.scala:140:18, :153:34
    .io_push_bits_data_data    (_c_q_io_deq_bits_data),	// src/main/scala/chisel3/util/Decoupled.scala:376:21
    .io_push_bits_data_corrupt (_c_q_io_deq_bits_corrupt),	// src/main/scala/chisel3/util/Decoupled.scala:376:21
    .io_valid                  (_putbuffer_io_valid),
    .io_pop_valid              (_putbuffer_io_pop_valid_T),	// src/main/scala/chisel3/util/Decoupled.scala:52:35
    .io_pop_bits               (lists_clr_shiftAmount),	// src/main/scala/chisel3/util/OneHot.scala:64:49
    .io_data_data              (io_rel_beat_data_0),
    .io_data_corrupt           (io_rel_beat_corrupt_0)
  );
  assign io_req_valid = io_req_valid_0;
  assign io_req_bits_opcode = io_req_bits_opcode_0;
  assign io_req_bits_param = io_req_bits_param_0;
  assign io_req_bits_size = io_req_bits_size_0;
  assign io_req_bits_source = io_req_bits_source_0;
  assign io_req_bits_tag = io_req_bits_tag_0;
  assign io_req_bits_offset = io_req_bits_offset_0;
  assign io_req_bits_put = io_req_bits_put_0;
  assign io_req_bits_set = io_req_bits_set_0;
  assign io_resp_valid = io_resp_valid_0;
  assign io_resp_bits_last = io_resp_bits_last_0;
  assign io_resp_bits_set = io_resp_bits_set_0;
  assign io_resp_bits_tag = io_resp_bits_tag_0;
  assign io_resp_bits_source = io_resp_bits_source_0;
  assign io_resp_bits_param = io_resp_bits_param_0;
  assign io_resp_bits_data = io_resp_bits_data_0;
  assign io_c_ready = io_c_ready_0;
  assign io_set = io_set_0;
  assign io_bs_adr_valid = io_bs_adr_valid_0;
  assign io_bs_adr_bits_noop = io_bs_adr_bits_noop_0;
  assign io_bs_adr_bits_way = io_bs_adr_bits_way_0;
  assign io_bs_adr_bits_set = io_bs_adr_bits_set_0;
  assign io_bs_adr_bits_beat = io_bs_adr_bits_beat_0;
  assign io_bs_adr_bits_mask = io_bs_adr_bits_mask_0;
  assign io_bs_dat_data = io_bs_dat_data_0;
  assign io_rel_pop_ready = io_rel_pop_ready_0;
  assign io_rel_beat_data = io_rel_beat_data_0;
  assign io_rel_beat_corrupt = io_rel_beat_corrupt_0;
endmodule

