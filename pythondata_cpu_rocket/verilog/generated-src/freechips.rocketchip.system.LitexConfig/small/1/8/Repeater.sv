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

module Repeater(
  input          clock,
                 reset,
                 io_repeat,	// src/main/scala/util/Repeater.scala:12:14
  output         io_enq_ready,	// src/main/scala/util/Repeater.scala:12:14
  input          io_enq_valid,	// src/main/scala/util/Repeater.scala:12:14
  input  [2:0]   io_enq_bits_opcode,	// src/main/scala/util/Repeater.scala:12:14
  input  [1:0]   io_enq_bits_param,	// src/main/scala/util/Repeater.scala:12:14
  input  [2:0]   io_enq_bits_size,	// src/main/scala/util/Repeater.scala:12:14
  input  [4:0]   io_enq_bits_source,	// src/main/scala/util/Repeater.scala:12:14
  input  [1:0]   io_enq_bits_sink,	// src/main/scala/util/Repeater.scala:12:14
  input          io_enq_bits_denied,	// src/main/scala/util/Repeater.scala:12:14
  input  [511:0] io_enq_bits_data,	// src/main/scala/util/Repeater.scala:12:14
  input          io_enq_bits_corrupt,	// src/main/scala/util/Repeater.scala:12:14
                 io_deq_ready,	// src/main/scala/util/Repeater.scala:12:14
  output         io_deq_valid,	// src/main/scala/util/Repeater.scala:12:14
  output [2:0]   io_deq_bits_opcode,	// src/main/scala/util/Repeater.scala:12:14
  output [1:0]   io_deq_bits_param,	// src/main/scala/util/Repeater.scala:12:14
  output [2:0]   io_deq_bits_size,	// src/main/scala/util/Repeater.scala:12:14
  output [4:0]   io_deq_bits_source,	// src/main/scala/util/Repeater.scala:12:14
  output [1:0]   io_deq_bits_sink,	// src/main/scala/util/Repeater.scala:12:14
  output         io_deq_bits_denied,	// src/main/scala/util/Repeater.scala:12:14
  output [511:0] io_deq_bits_data,	// src/main/scala/util/Repeater.scala:12:14
  output         io_deq_bits_corrupt	// src/main/scala/util/Repeater.scala:12:14
);

  wire         io_repeat_0 = io_repeat;
  wire         io_enq_valid_0 = io_enq_valid;
  wire [2:0]   io_enq_bits_opcode_0 = io_enq_bits_opcode;
  wire [1:0]   io_enq_bits_param_0 = io_enq_bits_param;
  wire [2:0]   io_enq_bits_size_0 = io_enq_bits_size;
  wire [4:0]   io_enq_bits_source_0 = io_enq_bits_source;
  wire [1:0]   io_enq_bits_sink_0 = io_enq_bits_sink;
  wire         io_enq_bits_denied_0 = io_enq_bits_denied;
  wire [511:0] io_enq_bits_data_0 = io_enq_bits_data;
  wire         io_enq_bits_corrupt_0 = io_enq_bits_corrupt;
  wire         io_deq_ready_0 = io_deq_ready;
  reg          full;	// src/main/scala/util/Repeater.scala:19:21
  wire         io_full = full;	// src/main/scala/util/Repeater.scala:19:21
  reg  [2:0]   saved_opcode;	// src/main/scala/util/Repeater.scala:20:18
  reg  [1:0]   saved_param;	// src/main/scala/util/Repeater.scala:20:18
  reg  [2:0]   saved_size;	// src/main/scala/util/Repeater.scala:20:18
  reg  [4:0]   saved_source;	// src/main/scala/util/Repeater.scala:20:18
  reg  [1:0]   saved_sink;	// src/main/scala/util/Repeater.scala:20:18
  reg          saved_denied;	// src/main/scala/util/Repeater.scala:20:18
  reg  [511:0] saved_data;	// src/main/scala/util/Repeater.scala:20:18
  reg          saved_corrupt;	// src/main/scala/util/Repeater.scala:20:18
  wire         io_deq_valid_0 = io_enq_valid_0 | full;	// src/main/scala/util/Repeater.scala:19:21, :23:32
  wire         io_enq_ready_0 = io_deq_ready_0 & ~full;	// src/main/scala/util/Repeater.scala:19:21, :24:{32,35}
  wire [2:0]   io_deq_bits_opcode_0 = full ? saved_opcode : io_enq_bits_opcode_0;	// src/main/scala/util/Repeater.scala:19:21, :20:18, :25:21
  wire [1:0]   io_deq_bits_param_0 = full ? saved_param : io_enq_bits_param_0;	// src/main/scala/util/Repeater.scala:19:21, :20:18, :25:21
  wire [2:0]   io_deq_bits_size_0 = full ? saved_size : io_enq_bits_size_0;	// src/main/scala/util/Repeater.scala:19:21, :20:18, :25:21
  wire [4:0]   io_deq_bits_source_0 = full ? saved_source : io_enq_bits_source_0;	// src/main/scala/util/Repeater.scala:19:21, :20:18, :25:21
  wire [1:0]   io_deq_bits_sink_0 = full ? saved_sink : io_enq_bits_sink_0;	// src/main/scala/util/Repeater.scala:19:21, :20:18, :25:21
  wire         io_deq_bits_denied_0 = full ? saved_denied : io_enq_bits_denied_0;	// src/main/scala/util/Repeater.scala:19:21, :20:18, :25:21
  wire [511:0] io_deq_bits_data_0 = full ? saved_data : io_enq_bits_data_0;	// src/main/scala/util/Repeater.scala:19:21, :20:18, :25:21
  wire         io_deq_bits_corrupt_0 = full ? saved_corrupt : io_enq_bits_corrupt_0;	// src/main/scala/util/Repeater.scala:19:21, :20:18, :25:21
  always @(posedge clock) begin
    automatic logic _GEN;	// src/main/scala/util/Repeater.scala:28:21
    _GEN = io_enq_ready_0 & io_enq_valid_0 & io_repeat_0;	// src/main/scala/util/Repeater.scala:28:21
    if (reset)
      full <= 1'h0;	// src/main/scala/util/Repeater.scala:19:21
    else
      full <= ~(io_deq_ready_0 & io_deq_valid_0 & ~io_repeat_0) & (_GEN | full);	// src/main/scala/util/Repeater.scala:19:21, :28:{21,36,43}, :29:{21,24,36,43}
    if (_GEN) begin	// src/main/scala/util/Repeater.scala:28:21
      saved_opcode <= io_enq_bits_opcode_0;	// src/main/scala/util/Repeater.scala:20:18
      saved_param <= io_enq_bits_param_0;	// src/main/scala/util/Repeater.scala:20:18
      saved_size <= io_enq_bits_size_0;	// src/main/scala/util/Repeater.scala:20:18
      saved_source <= io_enq_bits_source_0;	// src/main/scala/util/Repeater.scala:20:18
      saved_sink <= io_enq_bits_sink_0;	// src/main/scala/util/Repeater.scala:20:18
      saved_denied <= io_enq_bits_denied_0;	// src/main/scala/util/Repeater.scala:20:18
      saved_data <= io_enq_bits_data_0;	// src/main/scala/util/Repeater.scala:20:18
      saved_corrupt <= io_enq_bits_corrupt_0;	// src/main/scala/util/Repeater.scala:20:18
    end
  end // always @(posedge)
  `ifdef ENABLE_INITIAL_REG_
    `ifdef FIRRTL_BEFORE_INITIAL
      `FIRRTL_BEFORE_INITIAL
    `endif // FIRRTL_BEFORE_INITIAL
    initial begin
      automatic logic [31:0] _RANDOM[0:16];
      `ifdef INIT_RANDOM_PROLOG_
        `INIT_RANDOM_PROLOG_
      `endif // INIT_RANDOM_PROLOG_
      `ifdef RANDOMIZE_REG_INIT
        for (logic [4:0] i = 5'h0; i < 5'h11; i += 5'h1) begin
          _RANDOM[i] = `RANDOM;
        end
        full = _RANDOM[5'h0][0];	// src/main/scala/util/Repeater.scala:19:21
        saved_opcode = _RANDOM[5'h0][3:1];	// src/main/scala/util/Repeater.scala:19:21, :20:18
        saved_param = _RANDOM[5'h0][5:4];	// src/main/scala/util/Repeater.scala:19:21, :20:18
        saved_size = _RANDOM[5'h0][8:6];	// src/main/scala/util/Repeater.scala:19:21, :20:18
        saved_source = _RANDOM[5'h0][13:9];	// src/main/scala/util/Repeater.scala:19:21, :20:18
        saved_sink = _RANDOM[5'h0][15:14];	// src/main/scala/util/Repeater.scala:19:21, :20:18
        saved_denied = _RANDOM[5'h0][16];	// src/main/scala/util/Repeater.scala:19:21, :20:18
        saved_data =
          {_RANDOM[5'h0][31:17],
           _RANDOM[5'h1],
           _RANDOM[5'h2],
           _RANDOM[5'h3],
           _RANDOM[5'h4],
           _RANDOM[5'h5],
           _RANDOM[5'h6],
           _RANDOM[5'h7],
           _RANDOM[5'h8],
           _RANDOM[5'h9],
           _RANDOM[5'hA],
           _RANDOM[5'hB],
           _RANDOM[5'hC],
           _RANDOM[5'hD],
           _RANDOM[5'hE],
           _RANDOM[5'hF],
           _RANDOM[5'h10][16:0]};	// src/main/scala/util/Repeater.scala:19:21, :20:18
        saved_corrupt = _RANDOM[5'h10][17];	// src/main/scala/util/Repeater.scala:20:18
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  assign io_enq_ready = io_enq_ready_0;
  assign io_deq_valid = io_deq_valid_0;
  assign io_deq_bits_opcode = io_deq_bits_opcode_0;
  assign io_deq_bits_param = io_deq_bits_param_0;
  assign io_deq_bits_size = io_deq_bits_size_0;
  assign io_deq_bits_source = io_deq_bits_source_0;
  assign io_deq_bits_sink = io_deq_bits_sink_0;
  assign io_deq_bits_denied = io_deq_bits_denied_0;
  assign io_deq_bits_data = io_deq_bits_data_0;
  assign io_deq_bits_corrupt = io_deq_bits_corrupt_0;
endmodule

