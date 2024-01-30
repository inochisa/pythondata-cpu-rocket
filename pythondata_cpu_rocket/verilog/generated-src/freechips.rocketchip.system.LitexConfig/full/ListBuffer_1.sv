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

module ListBuffer_1(
  input         clock,
                reset,
  output        io_push_ready,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:38:14
  input         io_push_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:38:14
                io_push_bits_index,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:38:14
  input  [63:0] io_push_bits_data_data,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:38:14
  input         io_push_bits_data_corrupt,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:38:14
  output [1:0]  io_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:38:14
  input         io_pop_valid,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:38:14
                io_pop_bits,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:38:14
  output [63:0] io_data_data,	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:38:14
  output        io_data_corrupt	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:38:14
);

  wire [64:0] _data_ext_R0_data;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18
  wire [3:0]  _next_ext_R0_data;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:50:18
  wire [3:0]  _tail_ext_R0_data;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18
  wire [3:0]  _tail_ext_R1_data;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18
  wire [3:0]  _head_ext_R0_data;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:47:18
  wire        io_push_valid_0 = io_push_valid;
  wire        io_push_bits_index_0 = io_push_bits_index;
  wire [63:0] io_push_bits_data_data_0 = io_push_bits_data_data;
  wire        io_push_bits_data_corrupt_0 = io_push_bits_data_corrupt;
  wire        io_pop_valid_0 = io_pop_valid;
  wire        io_pop_bits_0 = io_pop_bits;
  wire        valid_set_shiftAmount = io_push_bits_index_0;	// src/main/scala/chisel3/util/OneHot.scala:64:49
  wire        valid_clr_shiftAmount = io_pop_bits_0;	// src/main/scala/chisel3/util/OneHot.scala:64:49
  reg  [1:0]  valid;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22
  wire [1:0]  io_valid_0 = valid;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22
  reg  [15:0] used;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:49:22
  wire [63:0] io_data_data_0 = _data_ext_R0_data[63:0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18
  wire        io_data_corrupt_0 = _data_ext_R0_data[64];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18
  wire [15:0] _freeOH_T_16 = ~used;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:49:22, :53:25
  wire [14:0] _freeOH_T_3 = _freeOH_T_16[14:0] | {_freeOH_T_16[13:0], 1'h0};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:53:25, src/main/scala/util/package.scala:245:{43,53}
  wire [14:0] _freeOH_T_6 = _freeOH_T_3 | {_freeOH_T_3[12:0], 2'h0};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22, src/main/scala/util/package.scala:245:{43,53}
  wire [14:0] _freeOH_T_9 = _freeOH_T_6 | {_freeOH_T_6[10:0], 4'h0};	// src/main/scala/util/package.scala:245:{43,48,53}
  wire [16:0] freeOH =
    {1'h0, {~(_freeOH_T_9 | {_freeOH_T_9[6:0], 8'h0}), 1'h1} & _freeOH_T_16};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:53:{16,25,38}, src/main/scala/util/package.scala:245:{43,48,53}
  wire        freeIdx_hi = freeOH[16];	// src/main/scala/chisel3/util/OneHot.scala:30:18, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:53:38
  wire [15:0] freeIdx_lo = freeOH[15:0];	// src/main/scala/chisel3/util/OneHot.scala:31:18, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:53:38
  wire [15:0] _freeIdx_T_1 = {15'h0, freeIdx_hi} | freeIdx_lo;	// src/main/scala/chisel3/util/OneHot.scala:30:18, :31:18, :32:28
  wire [7:0]  freeIdx_hi_1 = _freeIdx_T_1[15:8];	// src/main/scala/chisel3/util/OneHot.scala:30:18, :32:28
  wire [7:0]  freeIdx_lo_1 = _freeIdx_T_1[7:0];	// src/main/scala/chisel3/util/OneHot.scala:31:18, :32:28
  wire [7:0]  _freeIdx_T_3 = freeIdx_hi_1 | freeIdx_lo_1;	// src/main/scala/chisel3/util/OneHot.scala:30:18, :31:18, :32:28
  wire [3:0]  freeIdx_hi_2 = _freeIdx_T_3[7:4];	// src/main/scala/chisel3/util/OneHot.scala:30:18, :32:28
  wire [3:0]  freeIdx_lo_2 = _freeIdx_T_3[3:0];	// src/main/scala/chisel3/util/OneHot.scala:31:18, :32:28
  wire [3:0]  _freeIdx_T_5 = freeIdx_hi_2 | freeIdx_lo_2;	// src/main/scala/chisel3/util/OneHot.scala:30:18, :31:18, :32:28
  wire [1:0]  freeIdx_hi_3 = _freeIdx_T_5[3:2];	// src/main/scala/chisel3/util/OneHot.scala:30:18, :32:28
  wire [1:0]  freeIdx_lo_3 = _freeIdx_T_5[1:0];	// src/main/scala/chisel3/util/OneHot.scala:31:18, :32:28
  wire [4:0]  freeIdx =
    {freeIdx_hi,
     |freeIdx_hi_1,
     |freeIdx_hi_2,
     |freeIdx_hi_3,
     freeIdx_hi_3[1] | freeIdx_lo_3[1]};	// src/main/scala/chisel3/util/OneHot.scala:30:18, :31:18, :32:{10,14,28}
  wire [1:0]  _push_valid_T = valid >> io_push_bits_index_0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22, :62:25
  wire        push_valid = _push_valid_T[0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:62:25
  wire        io_push_ready_0 = used != 16'hFFFF;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:49:22, :53:25, :64:26
  wire        data_MPORT_en = io_push_ready_0 & io_push_valid_0;	// src/main/scala/chisel3/util/Decoupled.scala:52:35
  wire [1:0]  valid_set = data_MPORT_en ? 2'h1 << valid_set_shiftAmount : 2'h0;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/chisel3/util/OneHot.scala:64:49, :65:12, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22, :56:30, :65:23, :66:15
  wire [15:0] used_set = data_MPORT_en ? freeIdx_lo : 16'h0;	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/chisel3/util/OneHot.scala:31:18, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:49:22, :58:30, :65:23, :67:14
  wire [1:0]  _GEN = {1'h0, io_pop_bits_0};	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:78:24
  wire [1:0]  _pop_valid_T = valid >> _GEN;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22, :78:24
  wire        pop_valid = _pop_valid_T[0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:78:24
  `ifndef SYNTHESIS	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:85:10
    always @(posedge clock) begin	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:85:10
      automatic logic [1:0] _GEN_0 = io_valid_0 >> _GEN;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:78:24, :85:37
      if (~reset & ~(~io_pop_valid_0 | _GEN_0[0])) begin	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:85:{10,11,24,37}
        if (`ASSERT_VERBOSE_COND_)	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:85:10
          $error("Assertion failed\n    at ListBuffer.scala:85 assert (!io.pop.fire || (io.valid)(io.pop.bits))\n");	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:85:10
        if (`STOP_COND_)	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:85:10
          $fatal;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:85:10
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  wire [3:0]  used_clr_shiftAmount;	// src/main/scala/chisel3/util/OneHot.scala:64:49
  wire [15:0] used_clr = io_pop_valid_0 ? 16'h1 << used_clr_shiftAmount : 16'h0;	// src/main/scala/chisel3/util/OneHot.scala:64:49, :65:12, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:49:22, :59:30, :87:22, :88:14
  wire [1:0]  valid_clr =
    io_pop_valid_0 & _head_ext_R0_data == _tail_ext_R1_data
      ? 2'h1 << valid_clr_shiftAmount
      : 2'h0;	// src/main/scala/chisel3/util/OneHot.scala:64:49, :65:12, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22, :47:18, :48:18, :57:30, :87:22, :89:{20,48}, :90:17
  always @(posedge clock) begin
    if (reset) begin
      valid <= 2'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22
      used <= 16'h0;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:49:22
    end
    else begin
      valid <= valid & ~valid_clr | valid_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22, :56:30, :57:30, :98:{21,23,35}
      used <= used & ~used_clr | used_set;	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:49:22, :58:30, :59:30, :97:{21,23,35}
    end
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
        valid = _RANDOM[/*Zero width*/ 1'b0][1:0];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22
        used = _RANDOM[/*Zero width*/ 1'b0][17:2];	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:46:22, :49:22
      `endif // RANDOMIZE_REG_INIT
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  head_2x4 head_ext (	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:47:18
    .R0_addr (io_pop_bits_0),
    .R0_en   (1'h1),
    .R0_clk  (clock),
    .R0_data (_head_ext_R0_data),
    .W0_addr (io_pop_bits_0),
    .W0_en   (io_pop_valid_0),
    .W0_clk  (clock),
    .W0_data
      (data_MPORT_en & push_valid & _tail_ext_R0_data == _head_ext_R0_data
         ? freeIdx[3:0]
         : _next_ext_R0_data),	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/chisel3/util/OneHot.scala:32:10, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:47:18, :48:18, :50:18, :62:25, :92:{32,60,73}
    .W1_addr (io_push_bits_index_0),
    .W1_en   (data_MPORT_en & ~push_valid),	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:47:18, :62:25, :65:23, :69:23
    .W1_clk  (clock),
    .W1_data (freeIdx[3:0])	// src/main/scala/chisel3/util/OneHot.scala:32:10
  );
  assign used_clr_shiftAmount = _head_ext_R0_data;	// src/main/scala/chisel3/util/OneHot.scala:64:49, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:47:18
  tail_2x4 tail_ext (	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18
    .R0_addr (io_push_bits_index_0),
    .R0_en   (1'h1),
    .R0_clk  (clock),
    .R0_data (_tail_ext_R0_data),
    .R1_addr (io_pop_bits_0),
    .R1_en   (io_pop_valid_0),
    .R1_clk  (clock),
    .R1_data (_tail_ext_R1_data),
    .W0_addr (io_push_bits_index_0),
    .W0_en   (data_MPORT_en),	// src/main/scala/chisel3/util/Decoupled.scala:52:35
    .W0_clk  (clock),
    .W0_data (freeIdx[3:0])	// src/main/scala/chisel3/util/OneHot.scala:32:10
  );
  next_16x4 next_ext (	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:50:18
    .R0_addr (_head_ext_R0_data),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:47:18
    .R0_en   (io_pop_valid_0),
    .R0_clk  (clock),
    .R0_data (_next_ext_R0_data),
    .W0_addr (_tail_ext_R0_data),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:48:18
    .W0_en   (data_MPORT_en & push_valid),	// src/main/scala/chisel3/util/Decoupled.scala:52:35, src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:50:18, :62:25, :65:23, :69:23
    .W0_clk  (clock),
    .W0_data (freeIdx[3:0])	// src/main/scala/chisel3/util/OneHot.scala:32:10
  );
  data_16x65 data_ext (	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18
    .R0_addr (_head_ext_R0_data),	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:47:18
    .R0_en   (1'h1),
    .R0_clk  (clock),
    .R0_data (_data_ext_R0_data),
    .W0_addr (freeIdx[3:0]),	// src/main/scala/chisel3/util/OneHot.scala:32:10
    .W0_en   (data_MPORT_en),	// src/main/scala/chisel3/util/Decoupled.scala:52:35
    .W0_clk  (clock),
    .W0_data ({io_push_bits_data_corrupt_0, io_push_bits_data_data_0})	// src/main/scala/rocket-chip-inclusive-cache/design/craft/inclusivecache/src/ListBuffer.scala:51:18
  );
  assign io_push_ready = io_push_ready_0;
  assign io_valid = io_valid_0;
  assign io_data_data = io_data_data_0;
  assign io_data_corrupt = io_data_corrupt_0;
endmodule

