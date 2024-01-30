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

module SinkX(
  input         clock,
                reset,
                io_req_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:30:14
  output        io_req_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:30:14
  output [14:0] io_req_bits_tag,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:30:14
  output [9:0]  io_req_bits_set,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:30:14
  output        io_x_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:30:14
  input         io_x_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:30:14
  input  [31:0] io_x_bits_address	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:30:14
);

  wire        io_x_ready_0;
  wire        io_req_valid_0;
  wire [31:0] _x_q_io_deq_bits_address;	// src/main/scala/chisel3/util/Decoupled.scala:376:21
  wire        io_req_ready_0 = io_req_ready;
  wire        io_x_valid_0 = io_x_valid;
  wire [31:0] io_x_bits_address_0 = io_x_bits_address;
  wire [2:0]  io_req_bits_size = 3'h6;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:46:22
  wire        io_req_bits_prio_0 = 1'h1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:42:32
  wire        io_req_bits_control = 1'h1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:42:32
  wire        io_req_bits_prio_1 = 1'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:40:28
  wire        io_req_bits_prio_2 = 1'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:40:28
  wire [2:0]  io_req_bits_opcode = 3'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:44:22
  wire [2:0]  io_req_bits_param = 3'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:44:22
  wire [5:0]  io_req_bits_source = 6'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:49:22
  wire [5:0]  io_req_bits_offset = 6'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:49:22
  wire [5:0]  io_req_bits_put = 6'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/SinkX.scala:49:22
  wire [14:0] tag_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:9
  wire [9:0]  set_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:28
  wire [1:0]  offset_lo_lo_lo_hi = _x_q_io_deq_bits_address[2:1];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [2:0]  offset_lo_lo_lo = {offset_lo_lo_lo_hi, _x_q_io_deq_bits_address[0]};	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:{21,47}
  wire [1:0]  offset_lo_lo_hi_lo = _x_q_io_deq_bits_address[4:3];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_lo_lo_hi_hi = _x_q_io_deq_bits_address[6:5];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_lo_lo_hi = {offset_lo_lo_hi_hi, offset_lo_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [6:0]  offset_lo_lo = {offset_lo_lo_hi, offset_lo_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_lo_hi_lo_lo = _x_q_io_deq_bits_address[8:7];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_lo_hi_lo_hi = _x_q_io_deq_bits_address[10:9];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_lo_hi_lo = {offset_lo_hi_lo_hi, offset_lo_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_lo_hi_hi_lo = _x_q_io_deq_bits_address[12:11];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_lo_hi_hi_hi = _x_q_io_deq_bits_address[14:13];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_lo_hi_hi = {offset_lo_hi_hi_hi, offset_lo_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [7:0]  offset_lo_hi = {offset_lo_hi_hi, offset_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [14:0] offset_lo = {offset_lo_hi, offset_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_lo_lo_lo = _x_q_io_deq_bits_address[16:15];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_lo_lo_hi = _x_q_io_deq_bits_address[18:17];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_hi_lo_lo = {offset_hi_lo_lo_hi, offset_hi_lo_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_lo_hi_lo = _x_q_io_deq_bits_address[20:19];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_lo_hi_hi = _x_q_io_deq_bits_address[22:21];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_hi_lo_hi = {offset_hi_lo_hi_hi, offset_hi_lo_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [7:0]  offset_hi_lo = {offset_hi_lo_hi, offset_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_hi_lo_lo = _x_q_io_deq_bits_address[24:23];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_hi_lo_hi = _x_q_io_deq_bits_address[26:25];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_hi_hi_lo = {offset_hi_hi_lo_hi, offset_hi_hi_lo_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_hi_hi_lo = _x_q_io_deq_bits_address[28:27];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [1:0]  offset_hi_hi_hi_hi = _x_q_io_deq_bits_address[30:29];	// src/main/scala/chisel3/util/Decoupled.scala:376:21, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [3:0]  offset_hi_hi_hi = {offset_hi_hi_hi_hi, offset_hi_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [7:0]  offset_hi_hi = {offset_hi_hi_hi, offset_hi_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [15:0] offset_hi = {offset_hi_hi, offset_hi_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [30:0] offset = {offset_hi, offset_lo};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21
  wire [24:0] set = offset[30:6];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21, :215:22
  wire [14:0] tag = set[24:10];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:215:22, :216:19
  assign tag_1 = tag;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:216:19, :217:9
  wire [14:0] io_req_bits_tag_0 = tag_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:9
  assign set_1 = set[9:0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:215:22, :217:28
  wire [9:0]  io_req_bits_set_0 = set_1;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:217:28
  wire [5:0]  offset_1 = offset[5:0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/Parameters.scala:214:21, :217:50
  Queue_106 x_q (	// src/main/scala/chisel3/util/Decoupled.scala:376:21
    .clock               (clock),
    .reset               (reset),
    .io_enq_ready        (io_x_ready_0),
    .io_enq_valid        (io_x_valid_0),
    .io_enq_bits_address (io_x_bits_address_0),
    .io_deq_ready        (io_req_ready_0),
    .io_deq_valid        (io_req_valid_0),
    .io_deq_bits_address (_x_q_io_deq_bits_address)
  );
  assign io_req_valid = io_req_valid_0;
  assign io_req_bits_tag = io_req_bits_tag_0;
  assign io_req_bits_set = io_req_bits_set_0;
  assign io_x_ready = io_x_ready_0;
endmodule

