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

module TLInterconnectCoupler_2(
  input          clock,
                 reset,
  output         auto_widget_in_a_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_in_a_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [2:0]   auto_widget_in_a_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_in_a_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_in_a_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [4:0]   auto_widget_in_a_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [31:0]  auto_widget_in_a_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [7:0]   auto_widget_in_a_bits_mask,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [63:0]  auto_widget_in_a_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_in_a_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_in_b_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_widget_in_b_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [1:0]   auto_widget_in_b_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [31:0]  auto_widget_in_b_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_widget_in_c_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_in_c_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [2:0]   auto_widget_in_c_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_in_c_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_in_c_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [4:0]   auto_widget_in_c_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [31:0]  auto_widget_in_c_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [63:0]  auto_widget_in_c_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_in_c_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_in_d_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_widget_in_d_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [2:0]   auto_widget_in_d_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [1:0]   auto_widget_in_d_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [2:0]   auto_widget_in_d_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [4:0]   auto_widget_in_d_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [1:0]   auto_widget_in_d_bits_sink,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_widget_in_d_bits_denied,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [63:0]  auto_widget_in_d_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_widget_in_d_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_in_e_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [1:0]   auto_widget_in_e_bits_sink,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_out_a_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_widget_out_a_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [2:0]   auto_widget_out_a_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_out_a_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_out_a_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [4:0]   auto_widget_out_a_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [31:0]  auto_widget_out_a_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [15:0]  auto_widget_out_a_bits_mask,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [127:0] auto_widget_out_a_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_widget_out_a_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_out_b_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_out_b_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [1:0]   auto_widget_out_b_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [31:0]  auto_widget_out_b_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_out_c_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_widget_out_c_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [2:0]   auto_widget_out_c_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_out_c_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_out_c_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [4:0]   auto_widget_out_c_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [31:0]  auto_widget_out_c_bits_address,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [127:0] auto_widget_out_c_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_widget_out_c_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
                 auto_widget_out_d_ready,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_out_d_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [2:0]   auto_widget_out_d_bits_opcode,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [1:0]   auto_widget_out_d_bits_param,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [2:0]   auto_widget_out_d_bits_size,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [4:0]   auto_widget_out_d_bits_source,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [1:0]   auto_widget_out_d_bits_sink,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_out_d_bits_denied,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input  [127:0] auto_widget_out_d_bits_data,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  input          auto_widget_out_d_bits_corrupt,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output         auto_widget_out_e_valid,	// src/main/scala/diplomacy/LazyModule.scala:367:18
  output [1:0]   auto_widget_out_e_bits_sink	// src/main/scala/diplomacy/LazyModule.scala:367:18
);

  wire [1:0]   auto_widget_out_e_bits_sink_0;
  wire         auto_widget_out_e_valid_0;
  wire         auto_widget_out_d_ready_0;
  wire         auto_widget_out_c_bits_corrupt_0;
  wire [127:0] auto_widget_out_c_bits_data_0;
  wire [31:0]  auto_widget_out_c_bits_address_0;
  wire [4:0]   auto_widget_out_c_bits_source_0;
  wire [2:0]   auto_widget_out_c_bits_size_0;
  wire [2:0]   auto_widget_out_c_bits_param_0;
  wire [2:0]   auto_widget_out_c_bits_opcode_0;
  wire         auto_widget_out_c_valid_0;
  wire         auto_widget_out_b_ready_0;
  wire         auto_widget_out_a_bits_corrupt_0;
  wire [127:0] auto_widget_out_a_bits_data_0;
  wire [15:0]  auto_widget_out_a_bits_mask_0;
  wire [31:0]  auto_widget_out_a_bits_address_0;
  wire [4:0]   auto_widget_out_a_bits_source_0;
  wire [2:0]   auto_widget_out_a_bits_size_0;
  wire [2:0]   auto_widget_out_a_bits_param_0;
  wire [2:0]   auto_widget_out_a_bits_opcode_0;
  wire         auto_widget_out_a_valid_0;
  wire         auto_widget_in_d_bits_corrupt_0;
  wire [63:0]  auto_widget_in_d_bits_data_0;
  wire         auto_widget_in_d_bits_denied_0;
  wire [1:0]   auto_widget_in_d_bits_sink_0;
  wire [4:0]   auto_widget_in_d_bits_source_0;
  wire [2:0]   auto_widget_in_d_bits_size_0;
  wire [1:0]   auto_widget_in_d_bits_param_0;
  wire [2:0]   auto_widget_in_d_bits_opcode_0;
  wire         auto_widget_in_d_valid_0;
  wire         auto_widget_in_c_ready_0;
  wire [31:0]  auto_widget_in_b_bits_address_0;
  wire [1:0]   auto_widget_in_b_bits_param_0;
  wire         auto_widget_in_b_valid_0;
  wire         auto_widget_in_a_ready_0;
  wire         auto_widget_in_a_valid_0 = auto_widget_in_a_valid;
  wire [2:0]   auto_widget_in_a_bits_opcode_0 = auto_widget_in_a_bits_opcode;
  wire [2:0]   auto_widget_in_a_bits_param_0 = auto_widget_in_a_bits_param;
  wire [2:0]   auto_widget_in_a_bits_size_0 = auto_widget_in_a_bits_size;
  wire [4:0]   auto_widget_in_a_bits_source_0 = auto_widget_in_a_bits_source;
  wire [31:0]  auto_widget_in_a_bits_address_0 = auto_widget_in_a_bits_address;
  wire [7:0]   auto_widget_in_a_bits_mask_0 = auto_widget_in_a_bits_mask;
  wire [63:0]  auto_widget_in_a_bits_data_0 = auto_widget_in_a_bits_data;
  wire         auto_widget_in_a_bits_corrupt_0 = auto_widget_in_a_bits_corrupt;
  wire         auto_widget_in_b_ready_0 = auto_widget_in_b_ready;
  wire         auto_widget_in_c_valid_0 = auto_widget_in_c_valid;
  wire [2:0]   auto_widget_in_c_bits_opcode_0 = auto_widget_in_c_bits_opcode;
  wire [2:0]   auto_widget_in_c_bits_param_0 = auto_widget_in_c_bits_param;
  wire [2:0]   auto_widget_in_c_bits_size_0 = auto_widget_in_c_bits_size;
  wire [4:0]   auto_widget_in_c_bits_source_0 = auto_widget_in_c_bits_source;
  wire [31:0]  auto_widget_in_c_bits_address_0 = auto_widget_in_c_bits_address;
  wire [63:0]  auto_widget_in_c_bits_data_0 = auto_widget_in_c_bits_data;
  wire         auto_widget_in_c_bits_corrupt_0 = auto_widget_in_c_bits_corrupt;
  wire         auto_widget_in_d_ready_0 = auto_widget_in_d_ready;
  wire         auto_widget_in_e_valid_0 = auto_widget_in_e_valid;
  wire [1:0]   auto_widget_in_e_bits_sink_0 = auto_widget_in_e_bits_sink;
  wire         auto_widget_out_a_ready_0 = auto_widget_out_a_ready;
  wire         auto_widget_out_b_valid_0 = auto_widget_out_b_valid;
  wire [1:0]   auto_widget_out_b_bits_param_0 = auto_widget_out_b_bits_param;
  wire [31:0]  auto_widget_out_b_bits_address_0 = auto_widget_out_b_bits_address;
  wire         auto_widget_out_c_ready_0 = auto_widget_out_c_ready;
  wire         auto_widget_out_d_valid_0 = auto_widget_out_d_valid;
  wire [2:0]   auto_widget_out_d_bits_opcode_0 = auto_widget_out_d_bits_opcode;
  wire [1:0]   auto_widget_out_d_bits_param_0 = auto_widget_out_d_bits_param;
  wire [2:0]   auto_widget_out_d_bits_size_0 = auto_widget_out_d_bits_size;
  wire [4:0]   auto_widget_out_d_bits_source_0 = auto_widget_out_d_bits_source;
  wire [1:0]   auto_widget_out_d_bits_sink_0 = auto_widget_out_d_bits_sink;
  wire         auto_widget_out_d_bits_denied_0 = auto_widget_out_d_bits_denied;
  wire [127:0] auto_widget_out_d_bits_data_0 = auto_widget_out_d_bits_data;
  wire         auto_widget_out_d_bits_corrupt_0 = auto_widget_out_d_bits_corrupt;
  wire [127:0] auto_widget_out_b_bits_data = 128'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire [15:0]  auto_widget_out_b_bits_mask = 16'hFFFF;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_e_ready = 1'h1;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_e_ready = 1'h1;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire [63:0]  auto_widget_in_b_bits_data = 64'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_a_bits_user_amba_prot_bufferable = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_a_bits_user_amba_prot_modifiable = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_a_bits_user_amba_prot_readalloc = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_a_bits_user_amba_prot_writealloc = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_a_bits_user_amba_prot_privileged = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_a_bits_user_amba_prot_secure = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_a_bits_user_amba_prot_fetch = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_b_bits_corrupt = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_c_bits_user_amba_prot_bufferable = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_c_bits_user_amba_prot_modifiable = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_c_bits_user_amba_prot_readalloc = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_c_bits_user_amba_prot_writealloc = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_c_bits_user_amba_prot_privileged = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_c_bits_user_amba_prot_secure = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_in_c_bits_user_amba_prot_fetch = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_a_bits_user_amba_prot_bufferable = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_a_bits_user_amba_prot_modifiable = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_a_bits_user_amba_prot_readalloc = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_a_bits_user_amba_prot_writealloc = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_a_bits_user_amba_prot_privileged = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_a_bits_user_amba_prot_secure = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_a_bits_user_amba_prot_fetch = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_b_bits_corrupt = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_c_bits_user_amba_prot_bufferable = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_c_bits_user_amba_prot_modifiable = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_c_bits_user_amba_prot_readalloc = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_c_bits_user_amba_prot_writealloc = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_c_bits_user_amba_prot_privileged = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_c_bits_user_amba_prot_secure = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire         auto_widget_out_c_bits_user_amba_prot_fetch = 1'h0;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire [7:0]   auto_widget_in_b_bits_mask = 8'hFF;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire [4:0]   auto_widget_in_b_bits_source = 5'h10;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire [4:0]   auto_widget_out_b_bits_source = 5'h10;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire [2:0]   auto_widget_in_b_bits_opcode = 3'h6;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire [2:0]   auto_widget_in_b_bits_size = 3'h6;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire [2:0]   auto_widget_out_b_bits_opcode = 3'h6;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  wire [2:0]   auto_widget_out_b_bits_size = 3'h6;	// src/main/scala/diplomacy/LazyModule.scala:367:18, src/main/scala/tilelink/WidthWidget.scala:220:28
  TLWidthWidget_2 widget (	// src/main/scala/tilelink/WidthWidget.scala:220:28
    .clock                   (clock),
    .reset                   (reset),
    .auto_in_a_ready         (auto_widget_in_a_ready_0),
    .auto_in_a_valid         (auto_widget_in_a_valid_0),
    .auto_in_a_bits_opcode   (auto_widget_in_a_bits_opcode_0),
    .auto_in_a_bits_param    (auto_widget_in_a_bits_param_0),
    .auto_in_a_bits_size     (auto_widget_in_a_bits_size_0),
    .auto_in_a_bits_source   (auto_widget_in_a_bits_source_0),
    .auto_in_a_bits_address  (auto_widget_in_a_bits_address_0),
    .auto_in_a_bits_mask     (auto_widget_in_a_bits_mask_0),
    .auto_in_a_bits_data     (auto_widget_in_a_bits_data_0),
    .auto_in_a_bits_corrupt  (auto_widget_in_a_bits_corrupt_0),
    .auto_in_b_ready         (auto_widget_in_b_ready_0),
    .auto_in_b_valid         (auto_widget_in_b_valid_0),
    .auto_in_b_bits_param    (auto_widget_in_b_bits_param_0),
    .auto_in_b_bits_address  (auto_widget_in_b_bits_address_0),
    .auto_in_c_ready         (auto_widget_in_c_ready_0),
    .auto_in_c_valid         (auto_widget_in_c_valid_0),
    .auto_in_c_bits_opcode   (auto_widget_in_c_bits_opcode_0),
    .auto_in_c_bits_param    (auto_widget_in_c_bits_param_0),
    .auto_in_c_bits_size     (auto_widget_in_c_bits_size_0),
    .auto_in_c_bits_source   (auto_widget_in_c_bits_source_0),
    .auto_in_c_bits_address  (auto_widget_in_c_bits_address_0),
    .auto_in_c_bits_data     (auto_widget_in_c_bits_data_0),
    .auto_in_c_bits_corrupt  (auto_widget_in_c_bits_corrupt_0),
    .auto_in_d_ready         (auto_widget_in_d_ready_0),
    .auto_in_d_valid         (auto_widget_in_d_valid_0),
    .auto_in_d_bits_opcode   (auto_widget_in_d_bits_opcode_0),
    .auto_in_d_bits_param    (auto_widget_in_d_bits_param_0),
    .auto_in_d_bits_size     (auto_widget_in_d_bits_size_0),
    .auto_in_d_bits_source   (auto_widget_in_d_bits_source_0),
    .auto_in_d_bits_sink     (auto_widget_in_d_bits_sink_0),
    .auto_in_d_bits_denied   (auto_widget_in_d_bits_denied_0),
    .auto_in_d_bits_data     (auto_widget_in_d_bits_data_0),
    .auto_in_d_bits_corrupt  (auto_widget_in_d_bits_corrupt_0),
    .auto_in_e_valid         (auto_widget_in_e_valid_0),
    .auto_in_e_bits_sink     (auto_widget_in_e_bits_sink_0),
    .auto_out_a_ready        (auto_widget_out_a_ready_0),
    .auto_out_a_valid        (auto_widget_out_a_valid_0),
    .auto_out_a_bits_opcode  (auto_widget_out_a_bits_opcode_0),
    .auto_out_a_bits_param   (auto_widget_out_a_bits_param_0),
    .auto_out_a_bits_size    (auto_widget_out_a_bits_size_0),
    .auto_out_a_bits_source  (auto_widget_out_a_bits_source_0),
    .auto_out_a_bits_address (auto_widget_out_a_bits_address_0),
    .auto_out_a_bits_mask    (auto_widget_out_a_bits_mask_0),
    .auto_out_a_bits_data    (auto_widget_out_a_bits_data_0),
    .auto_out_a_bits_corrupt (auto_widget_out_a_bits_corrupt_0),
    .auto_out_b_ready        (auto_widget_out_b_ready_0),
    .auto_out_b_valid        (auto_widget_out_b_valid_0),
    .auto_out_b_bits_param   (auto_widget_out_b_bits_param_0),
    .auto_out_b_bits_address (auto_widget_out_b_bits_address_0),
    .auto_out_c_ready        (auto_widget_out_c_ready_0),
    .auto_out_c_valid        (auto_widget_out_c_valid_0),
    .auto_out_c_bits_opcode  (auto_widget_out_c_bits_opcode_0),
    .auto_out_c_bits_param   (auto_widget_out_c_bits_param_0),
    .auto_out_c_bits_size    (auto_widget_out_c_bits_size_0),
    .auto_out_c_bits_source  (auto_widget_out_c_bits_source_0),
    .auto_out_c_bits_address (auto_widget_out_c_bits_address_0),
    .auto_out_c_bits_data    (auto_widget_out_c_bits_data_0),
    .auto_out_c_bits_corrupt (auto_widget_out_c_bits_corrupt_0),
    .auto_out_d_ready        (auto_widget_out_d_ready_0),
    .auto_out_d_valid        (auto_widget_out_d_valid_0),
    .auto_out_d_bits_opcode  (auto_widget_out_d_bits_opcode_0),
    .auto_out_d_bits_param   (auto_widget_out_d_bits_param_0),
    .auto_out_d_bits_size    (auto_widget_out_d_bits_size_0),
    .auto_out_d_bits_source  (auto_widget_out_d_bits_source_0),
    .auto_out_d_bits_sink    (auto_widget_out_d_bits_sink_0),
    .auto_out_d_bits_denied  (auto_widget_out_d_bits_denied_0),
    .auto_out_d_bits_data    (auto_widget_out_d_bits_data_0),
    .auto_out_d_bits_corrupt (auto_widget_out_d_bits_corrupt_0),
    .auto_out_e_valid        (auto_widget_out_e_valid_0),
    .auto_out_e_bits_sink    (auto_widget_out_e_bits_sink_0)
  );
  assign auto_widget_in_a_ready = auto_widget_in_a_ready_0;
  assign auto_widget_in_b_valid = auto_widget_in_b_valid_0;
  assign auto_widget_in_b_bits_param = auto_widget_in_b_bits_param_0;
  assign auto_widget_in_b_bits_address = auto_widget_in_b_bits_address_0;
  assign auto_widget_in_c_ready = auto_widget_in_c_ready_0;
  assign auto_widget_in_d_valid = auto_widget_in_d_valid_0;
  assign auto_widget_in_d_bits_opcode = auto_widget_in_d_bits_opcode_0;
  assign auto_widget_in_d_bits_param = auto_widget_in_d_bits_param_0;
  assign auto_widget_in_d_bits_size = auto_widget_in_d_bits_size_0;
  assign auto_widget_in_d_bits_source = auto_widget_in_d_bits_source_0;
  assign auto_widget_in_d_bits_sink = auto_widget_in_d_bits_sink_0;
  assign auto_widget_in_d_bits_denied = auto_widget_in_d_bits_denied_0;
  assign auto_widget_in_d_bits_data = auto_widget_in_d_bits_data_0;
  assign auto_widget_in_d_bits_corrupt = auto_widget_in_d_bits_corrupt_0;
  assign auto_widget_out_a_valid = auto_widget_out_a_valid_0;
  assign auto_widget_out_a_bits_opcode = auto_widget_out_a_bits_opcode_0;
  assign auto_widget_out_a_bits_param = auto_widget_out_a_bits_param_0;
  assign auto_widget_out_a_bits_size = auto_widget_out_a_bits_size_0;
  assign auto_widget_out_a_bits_source = auto_widget_out_a_bits_source_0;
  assign auto_widget_out_a_bits_address = auto_widget_out_a_bits_address_0;
  assign auto_widget_out_a_bits_mask = auto_widget_out_a_bits_mask_0;
  assign auto_widget_out_a_bits_data = auto_widget_out_a_bits_data_0;
  assign auto_widget_out_a_bits_corrupt = auto_widget_out_a_bits_corrupt_0;
  assign auto_widget_out_b_ready = auto_widget_out_b_ready_0;
  assign auto_widget_out_c_valid = auto_widget_out_c_valid_0;
  assign auto_widget_out_c_bits_opcode = auto_widget_out_c_bits_opcode_0;
  assign auto_widget_out_c_bits_param = auto_widget_out_c_bits_param_0;
  assign auto_widget_out_c_bits_size = auto_widget_out_c_bits_size_0;
  assign auto_widget_out_c_bits_source = auto_widget_out_c_bits_source_0;
  assign auto_widget_out_c_bits_address = auto_widget_out_c_bits_address_0;
  assign auto_widget_out_c_bits_data = auto_widget_out_c_bits_data_0;
  assign auto_widget_out_c_bits_corrupt = auto_widget_out_c_bits_corrupt_0;
  assign auto_widget_out_d_ready = auto_widget_out_d_ready_0;
  assign auto_widget_out_e_valid = auto_widget_out_e_valid_0;
  assign auto_widget_out_e_bits_sink = auto_widget_out_e_bits_sink_0;
endmodule

