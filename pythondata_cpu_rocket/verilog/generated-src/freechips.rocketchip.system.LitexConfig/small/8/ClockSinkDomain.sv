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

module ClockSinkDomain(
  input         auto_plic_int_in_0,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_in_1,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_in_2,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_in_3,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_in_4,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_in_5,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_in_6,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_in_7,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output        auto_plic_int_out_7_0,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_out_6_0,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_out_5_0,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_out_4_0,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_out_3_0,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_out_2_0,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_out_1_0,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_int_out_0_0,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_in_a_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input         auto_plic_in_a_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [2:0]  auto_plic_in_a_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_in_a_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [1:0]  auto_plic_in_a_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [9:0]  auto_plic_in_a_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [27:0] auto_plic_in_a_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [7:0]  auto_plic_in_a_bits_mask,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [63:0] auto_plic_in_a_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input         auto_plic_in_a_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_plic_in_d_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output        auto_plic_in_d_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [2:0]  auto_plic_in_d_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [1:0]  auto_plic_in_d_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [9:0]  auto_plic_in_d_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [63:0] auto_plic_in_d_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input         auto_clock_in_clock,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                auto_clock_in_reset	// src/main/scala/diplomacy/LazyModule.scala:367:18
);

  wire [63:0] auto_plic_in_d_bits_data_0;
  wire [9:0]  auto_plic_in_d_bits_source_0;
  wire [1:0]  auto_plic_in_d_bits_size_0;
  wire [2:0]  auto_plic_in_d_bits_opcode_0;
  wire        auto_plic_in_d_valid_0;
  wire        auto_plic_in_a_ready_0;
  wire        auto_plic_int_out_0_0_0;
  wire        auto_plic_int_out_1_0_0;
  wire        auto_plic_int_out_2_0_0;
  wire        auto_plic_int_out_3_0_0;
  wire        auto_plic_int_out_4_0_0;
  wire        auto_plic_int_out_5_0_0;
  wire        auto_plic_int_out_6_0_0;
  wire        auto_plic_int_out_7_0_0;
  wire        auto_plic_int_in_0_0 = auto_plic_int_in_0;
  wire        auto_plic_int_in_1_0 = auto_plic_int_in_1;
  wire        auto_plic_int_in_2_0 = auto_plic_int_in_2;
  wire        auto_plic_int_in_3_0 = auto_plic_int_in_3;
  wire        auto_plic_int_in_4_0 = auto_plic_int_in_4;
  wire        auto_plic_int_in_5_0 = auto_plic_int_in_5;
  wire        auto_plic_int_in_6_0 = auto_plic_int_in_6;
  wire        auto_plic_int_in_7_0 = auto_plic_int_in_7;
  wire        auto_plic_in_a_valid_0 = auto_plic_in_a_valid;
  wire [2:0]  auto_plic_in_a_bits_opcode_0 = auto_plic_in_a_bits_opcode;
  wire [2:0]  auto_plic_in_a_bits_param_0 = auto_plic_in_a_bits_param;
  wire [1:0]  auto_plic_in_a_bits_size_0 = auto_plic_in_a_bits_size;
  wire [9:0]  auto_plic_in_a_bits_source_0 = auto_plic_in_a_bits_source;
  wire [27:0] auto_plic_in_a_bits_address_0 = auto_plic_in_a_bits_address;
  wire [7:0]  auto_plic_in_a_bits_mask_0 = auto_plic_in_a_bits_mask;
  wire [63:0] auto_plic_in_a_bits_data_0 = auto_plic_in_a_bits_data;
  wire        auto_plic_in_a_bits_corrupt_0 = auto_plic_in_a_bits_corrupt;
  wire        auto_plic_in_d_ready_0 = auto_plic_in_d_ready;
  wire        auto_clock_in_clock_0 = auto_clock_in_clock;
  wire        auto_clock_in_reset_0 = auto_clock_in_reset;
  wire        auto_plic_in_d_bits_sink = 1'h0;	// src/main/scala/devices/tilelink/Plic.scala:363:46, src/main/scala/diplomacy/LazyModule.scala:367:18
  wire        auto_plic_in_d_bits_denied = 1'h0;	// src/main/scala/devices/tilelink/Plic.scala:363:46, src/main/scala/diplomacy/LazyModule.scala:367:18
  wire        auto_plic_in_d_bits_corrupt = 1'h0;	// src/main/scala/devices/tilelink/Plic.scala:363:46, src/main/scala/diplomacy/LazyModule.scala:367:18
  wire [1:0]  auto_plic_in_d_bits_param = 2'h0;	// src/main/scala/devices/tilelink/Plic.scala:363:46, src/main/scala/diplomacy/LazyModule.scala:367:18
  wire        clockNodeIn_clock = auto_clock_in_clock_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire        clockNodeIn_reset = auto_clock_in_reset_0;	// src/main/scala/diplomacy/Nodes.scala:1214:17
  wire        childClock = clockNodeIn_clock;	// src/main/scala/diplomacy/LazyModule.scala:412:31, src/main/scala/diplomacy/Nodes.scala:1214:17
  wire        childReset = clockNodeIn_reset;	// src/main/scala/diplomacy/LazyModule.scala:414:31, src/main/scala/diplomacy/Nodes.scala:1214:17
  TLPLIC plic (	// src/main/scala/devices/tilelink/Plic.scala:363:46
    .clock                  (childClock),	// src/main/scala/diplomacy/LazyModule.scala:412:31
    .reset                  (childReset),	// src/main/scala/diplomacy/LazyModule.scala:414:31
    .auto_int_in_0          (auto_plic_int_in_0_0),
    .auto_int_in_1          (auto_plic_int_in_1_0),
    .auto_int_in_2          (auto_plic_int_in_2_0),
    .auto_int_in_3          (auto_plic_int_in_3_0),
    .auto_int_in_4          (auto_plic_int_in_4_0),
    .auto_int_in_5          (auto_plic_int_in_5_0),
    .auto_int_in_6          (auto_plic_int_in_6_0),
    .auto_int_in_7          (auto_plic_int_in_7_0),
    .auto_int_out_7_0       (auto_plic_int_out_7_0_0),
    .auto_int_out_6_0       (auto_plic_int_out_6_0_0),
    .auto_int_out_5_0       (auto_plic_int_out_5_0_0),
    .auto_int_out_4_0       (auto_plic_int_out_4_0_0),
    .auto_int_out_3_0       (auto_plic_int_out_3_0_0),
    .auto_int_out_2_0       (auto_plic_int_out_2_0_0),
    .auto_int_out_1_0       (auto_plic_int_out_1_0_0),
    .auto_int_out_0_0       (auto_plic_int_out_0_0_0),
    .auto_in_a_ready        (auto_plic_in_a_ready_0),
    .auto_in_a_valid        (auto_plic_in_a_valid_0),
    .auto_in_a_bits_opcode  (auto_plic_in_a_bits_opcode_0),
    .auto_in_a_bits_param   (auto_plic_in_a_bits_param_0),
    .auto_in_a_bits_size    (auto_plic_in_a_bits_size_0),
    .auto_in_a_bits_source  (auto_plic_in_a_bits_source_0),
    .auto_in_a_bits_address (auto_plic_in_a_bits_address_0),
    .auto_in_a_bits_mask    (auto_plic_in_a_bits_mask_0),
    .auto_in_a_bits_data    (auto_plic_in_a_bits_data_0),
    .auto_in_a_bits_corrupt (auto_plic_in_a_bits_corrupt_0),
    .auto_in_d_ready        (auto_plic_in_d_ready_0),
    .auto_in_d_valid        (auto_plic_in_d_valid_0),
    .auto_in_d_bits_opcode  (auto_plic_in_d_bits_opcode_0),
    .auto_in_d_bits_size    (auto_plic_in_d_bits_size_0),
    .auto_in_d_bits_source  (auto_plic_in_d_bits_source_0),
    .auto_in_d_bits_data    (auto_plic_in_d_bits_data_0)
  );
  assign auto_plic_int_out_7_0 = auto_plic_int_out_7_0_0;
  assign auto_plic_int_out_6_0 = auto_plic_int_out_6_0_0;
  assign auto_plic_int_out_5_0 = auto_plic_int_out_5_0_0;
  assign auto_plic_int_out_4_0 = auto_plic_int_out_4_0_0;
  assign auto_plic_int_out_3_0 = auto_plic_int_out_3_0_0;
  assign auto_plic_int_out_2_0 = auto_plic_int_out_2_0_0;
  assign auto_plic_int_out_1_0 = auto_plic_int_out_1_0_0;
  assign auto_plic_int_out_0_0 = auto_plic_int_out_0_0_0;
  assign auto_plic_in_a_ready = auto_plic_in_a_ready_0;
  assign auto_plic_in_d_valid = auto_plic_in_d_valid_0;
  assign auto_plic_in_d_bits_opcode = auto_plic_in_d_bits_opcode_0;
  assign auto_plic_in_d_bits_size = auto_plic_in_d_bits_size_0;
  assign auto_plic_in_d_bits_source = auto_plic_in_d_bits_source_0;
  assign auto_plic_in_d_bits_data = auto_plic_in_d_bits_data_0;
endmodule

