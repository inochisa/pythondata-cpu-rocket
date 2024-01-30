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

module HellaCacheArbiter(
  output        io_requestor_0_req_ready,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input         io_requestor_0_req_valid,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [33:0] io_requestor_0_req_bits_addr,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [5:0]  io_requestor_0_req_bits_tag,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [4:0]  io_requestor_0_req_bits_cmd,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [1:0]  io_requestor_0_req_bits_size,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input         io_requestor_0_req_bits_signed,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_req_bits_dv,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_s1_kill,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [63:0] io_requestor_0_s1_data_data,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output        io_requestor_0_s2_nack,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_s2_nack_cause_raw,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_s2_uncached,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [31:0] io_requestor_0_s2_paddr,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output        io_requestor_0_resp_valid,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [33:0] io_requestor_0_resp_bits_addr,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [5:0]  io_requestor_0_resp_bits_tag,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [4:0]  io_requestor_0_resp_bits_cmd,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [1:0]  io_requestor_0_resp_bits_size,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output        io_requestor_0_resp_bits_signed,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [1:0]  io_requestor_0_resp_bits_dprv,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output        io_requestor_0_resp_bits_dv,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [63:0] io_requestor_0_resp_bits_data,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [7:0]  io_requestor_0_resp_bits_mask,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output        io_requestor_0_resp_bits_replay,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_resp_bits_has_data,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [63:0] io_requestor_0_resp_bits_data_word_bypass,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_resp_bits_data_raw,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_resp_bits_store_data,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output        io_requestor_0_replay_next,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_s2_xcpt_ma_ld,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_s2_xcpt_ma_st,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_s2_xcpt_pf_ld,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_s2_xcpt_pf_st,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_s2_xcpt_ae_ld,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_s2_xcpt_ae_st,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [33:0] io_requestor_0_s2_gpa,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output        io_requestor_0_ordered,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_perf_acquire,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_perf_release,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_perf_grant,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_perf_blocked,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_perf_canAcceptStoreThenLoad,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_perf_canAcceptStoreThenRMW,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_perf_canAcceptLoadThenLoad,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_perf_storeBufferEmptyAfterLoad,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_requestor_0_perf_storeBufferEmptyAfterStore,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input         io_requestor_0_keep_clock_enabled,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_req_ready,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output        io_mem_req_valid,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [33:0] io_mem_req_bits_addr,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [5:0]  io_mem_req_bits_tag,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [4:0]  io_mem_req_bits_cmd,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [1:0]  io_mem_req_bits_size,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output        io_mem_req_bits_signed,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_req_bits_dv,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_s1_kill,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output [63:0] io_mem_s1_data_data,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input         io_mem_s2_nack,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_s2_nack_cause_raw,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_s2_uncached,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [31:0] io_mem_s2_paddr,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input         io_mem_resp_valid,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [33:0] io_mem_resp_bits_addr,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [5:0]  io_mem_resp_bits_tag,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [4:0]  io_mem_resp_bits_cmd,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [1:0]  io_mem_resp_bits_size,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input         io_mem_resp_bits_signed,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [1:0]  io_mem_resp_bits_dprv,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input         io_mem_resp_bits_dv,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [63:0] io_mem_resp_bits_data,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [7:0]  io_mem_resp_bits_mask,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input         io_mem_resp_bits_replay,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_resp_bits_has_data,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [63:0] io_mem_resp_bits_data_word_bypass,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_resp_bits_data_raw,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_resp_bits_store_data,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input         io_mem_replay_next,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_s2_xcpt_ma_ld,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_s2_xcpt_ma_st,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_s2_xcpt_pf_ld,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_s2_xcpt_pf_st,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_s2_xcpt_ae_ld,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_s2_xcpt_ae_st,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input  [33:0] io_mem_s2_gpa,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  input         io_mem_ordered,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_perf_acquire,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_perf_release,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_perf_grant,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_perf_blocked,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_perf_canAcceptStoreThenLoad,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_perf_canAcceptStoreThenRMW,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_perf_canAcceptLoadThenLoad,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_perf_storeBufferEmptyAfterLoad,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
                io_mem_perf_storeBufferEmptyAfterStore,	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  output        io_mem_keep_clock_enabled	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
);

  wire        io_requestor_0_req_valid_0 = io_requestor_0_req_valid;
  wire [33:0] io_requestor_0_req_bits_addr_0 = io_requestor_0_req_bits_addr;
  wire [5:0]  io_requestor_0_req_bits_tag_0 = io_requestor_0_req_bits_tag;
  wire [4:0]  io_requestor_0_req_bits_cmd_0 = io_requestor_0_req_bits_cmd;
  wire [1:0]  io_requestor_0_req_bits_size_0 = io_requestor_0_req_bits_size;
  wire        io_requestor_0_req_bits_signed_0 = io_requestor_0_req_bits_signed;
  wire        io_requestor_0_req_bits_dv_0 = io_requestor_0_req_bits_dv;
  wire        io_requestor_0_s1_kill_0 = io_requestor_0_s1_kill;
  wire [63:0] io_requestor_0_s1_data_data_0 = io_requestor_0_s1_data_data;
  wire        io_requestor_0_keep_clock_enabled_0 = io_requestor_0_keep_clock_enabled;
  wire        io_mem_req_ready_0 = io_mem_req_ready;
  wire        io_mem_s2_nack_0 = io_mem_s2_nack;
  wire        io_mem_s2_nack_cause_raw_0 = io_mem_s2_nack_cause_raw;
  wire        io_mem_s2_uncached_0 = io_mem_s2_uncached;
  wire [31:0] io_mem_s2_paddr_0 = io_mem_s2_paddr;
  wire        io_mem_resp_valid_0 = io_mem_resp_valid;
  wire [33:0] io_mem_resp_bits_addr_0 = io_mem_resp_bits_addr;
  wire [5:0]  io_mem_resp_bits_tag_0 = io_mem_resp_bits_tag;
  wire [4:0]  io_mem_resp_bits_cmd_0 = io_mem_resp_bits_cmd;
  wire [1:0]  io_mem_resp_bits_size_0 = io_mem_resp_bits_size;
  wire        io_mem_resp_bits_signed_0 = io_mem_resp_bits_signed;
  wire [1:0]  io_mem_resp_bits_dprv_0 = io_mem_resp_bits_dprv;
  wire        io_mem_resp_bits_dv_0 = io_mem_resp_bits_dv;
  wire [63:0] io_mem_resp_bits_data_0 = io_mem_resp_bits_data;
  wire [7:0]  io_mem_resp_bits_mask_0 = io_mem_resp_bits_mask;
  wire        io_mem_resp_bits_replay_0 = io_mem_resp_bits_replay;
  wire        io_mem_resp_bits_has_data_0 = io_mem_resp_bits_has_data;
  wire [63:0] io_mem_resp_bits_data_word_bypass_0 = io_mem_resp_bits_data_word_bypass;
  wire [63:0] io_mem_resp_bits_data_raw_0 = io_mem_resp_bits_data_raw;
  wire [63:0] io_mem_resp_bits_store_data_0 = io_mem_resp_bits_store_data;
  wire        io_mem_replay_next_0 = io_mem_replay_next;
  wire        io_mem_s2_xcpt_ma_ld_0 = io_mem_s2_xcpt_ma_ld;
  wire        io_mem_s2_xcpt_ma_st_0 = io_mem_s2_xcpt_ma_st;
  wire        io_mem_s2_xcpt_pf_ld_0 = io_mem_s2_xcpt_pf_ld;
  wire        io_mem_s2_xcpt_pf_st_0 = io_mem_s2_xcpt_pf_st;
  wire        io_mem_s2_xcpt_ae_ld_0 = io_mem_s2_xcpt_ae_ld;
  wire        io_mem_s2_xcpt_ae_st_0 = io_mem_s2_xcpt_ae_st;
  wire [33:0] io_mem_s2_gpa_0 = io_mem_s2_gpa;
  wire        io_mem_ordered_0 = io_mem_ordered;
  wire        io_mem_perf_acquire_0 = io_mem_perf_acquire;
  wire        io_mem_perf_release_0 = io_mem_perf_release;
  wire        io_mem_perf_grant_0 = io_mem_perf_grant;
  wire        io_mem_perf_blocked_0 = io_mem_perf_blocked;
  wire        io_mem_perf_canAcceptStoreThenLoad_0 = io_mem_perf_canAcceptStoreThenLoad;
  wire        io_mem_perf_canAcceptStoreThenRMW_0 = io_mem_perf_canAcceptStoreThenRMW;
  wire        io_mem_perf_canAcceptLoadThenLoad_0 = io_mem_perf_canAcceptLoadThenLoad;
  wire        io_mem_perf_storeBufferEmptyAfterLoad_0 =
    io_mem_perf_storeBufferEmptyAfterLoad;
  wire        io_mem_perf_storeBufferEmptyAfterStore_0 =
    io_mem_perf_storeBufferEmptyAfterStore;
  wire [7:0]  io_requestor_0_req_bits_mask = 8'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire [7:0]  io_requestor_0_s1_data_mask = 8'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire [7:0]  io_mem_req_bits_mask = 8'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire [7:0]  io_mem_s1_data_mask = 8'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire [63:0] io_requestor_0_req_bits_data = 64'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire [63:0] io_mem_req_bits_data = 64'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_requestor_0_clock_enabled = 1'h1;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_mem_clock_enabled = 1'h1;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_requestor_0_req_bits_phys = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_requestor_0_req_bits_no_alloc = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_requestor_0_req_bits_no_xcpt = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_requestor_0_s2_kill = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_requestor_0_s2_xcpt_gf_ld = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_requestor_0_s2_xcpt_gf_st = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_requestor_0_s2_gpa_is_pte = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_requestor_0_perf_tlbMiss = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_mem_req_bits_phys = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_mem_req_bits_no_alloc = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_mem_req_bits_no_xcpt = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_mem_s2_kill = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_mem_s2_xcpt_gf_ld = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_mem_s2_xcpt_gf_st = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_mem_s2_gpa_is_pte = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_mem_perf_tlbMiss = 1'h0;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire [1:0]  io_requestor_0_req_bits_dprv = 2'h3;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire [1:0]  io_mem_req_bits_dprv = 2'h3;	// src/main/scala/rocket/HellaCacheArbiter.scala:12:14
  wire        io_mem_req_valid_0 = io_requestor_0_req_valid_0;
  wire [33:0] io_mem_req_bits_addr_0 = io_requestor_0_req_bits_addr_0;
  wire [5:0]  io_mem_req_bits_tag_0 = io_requestor_0_req_bits_tag_0;
  wire [4:0]  io_mem_req_bits_cmd_0 = io_requestor_0_req_bits_cmd_0;
  wire [1:0]  io_mem_req_bits_size_0 = io_requestor_0_req_bits_size_0;
  wire        io_mem_req_bits_signed_0 = io_requestor_0_req_bits_signed_0;
  wire        io_mem_req_bits_dv_0 = io_requestor_0_req_bits_dv_0;
  wire        io_mem_s1_kill_0 = io_requestor_0_s1_kill_0;
  wire [63:0] io_mem_s1_data_data_0 = io_requestor_0_s1_data_data_0;
  wire        io_mem_keep_clock_enabled_0 = io_requestor_0_keep_clock_enabled_0;
  wire        io_requestor_0_req_ready_0 = io_mem_req_ready_0;
  wire        io_requestor_0_s2_nack_0 = io_mem_s2_nack_0;
  wire        io_requestor_0_s2_nack_cause_raw_0 = io_mem_s2_nack_cause_raw_0;
  wire        io_requestor_0_s2_uncached_0 = io_mem_s2_uncached_0;
  wire [31:0] io_requestor_0_s2_paddr_0 = io_mem_s2_paddr_0;
  wire        io_requestor_0_resp_valid_0 = io_mem_resp_valid_0;
  wire [33:0] io_requestor_0_resp_bits_addr_0 = io_mem_resp_bits_addr_0;
  wire [5:0]  io_requestor_0_resp_bits_tag_0 = io_mem_resp_bits_tag_0;
  wire [4:0]  io_requestor_0_resp_bits_cmd_0 = io_mem_resp_bits_cmd_0;
  wire [1:0]  io_requestor_0_resp_bits_size_0 = io_mem_resp_bits_size_0;
  wire        io_requestor_0_resp_bits_signed_0 = io_mem_resp_bits_signed_0;
  wire [1:0]  io_requestor_0_resp_bits_dprv_0 = io_mem_resp_bits_dprv_0;
  wire        io_requestor_0_resp_bits_dv_0 = io_mem_resp_bits_dv_0;
  wire [63:0] io_requestor_0_resp_bits_data_0 = io_mem_resp_bits_data_0;
  wire [7:0]  io_requestor_0_resp_bits_mask_0 = io_mem_resp_bits_mask_0;
  wire        io_requestor_0_resp_bits_replay_0 = io_mem_resp_bits_replay_0;
  wire        io_requestor_0_resp_bits_has_data_0 = io_mem_resp_bits_has_data_0;
  wire [63:0] io_requestor_0_resp_bits_data_word_bypass_0 =
    io_mem_resp_bits_data_word_bypass_0;
  wire [63:0] io_requestor_0_resp_bits_data_raw_0 = io_mem_resp_bits_data_raw_0;
  wire [63:0] io_requestor_0_resp_bits_store_data_0 = io_mem_resp_bits_store_data_0;
  wire        io_requestor_0_replay_next_0 = io_mem_replay_next_0;
  wire        io_requestor_0_s2_xcpt_ma_ld_0 = io_mem_s2_xcpt_ma_ld_0;
  wire        io_requestor_0_s2_xcpt_ma_st_0 = io_mem_s2_xcpt_ma_st_0;
  wire        io_requestor_0_s2_xcpt_pf_ld_0 = io_mem_s2_xcpt_pf_ld_0;
  wire        io_requestor_0_s2_xcpt_pf_st_0 = io_mem_s2_xcpt_pf_st_0;
  wire        io_requestor_0_s2_xcpt_ae_ld_0 = io_mem_s2_xcpt_ae_ld_0;
  wire        io_requestor_0_s2_xcpt_ae_st_0 = io_mem_s2_xcpt_ae_st_0;
  wire [33:0] io_requestor_0_s2_gpa_0 = io_mem_s2_gpa_0;
  wire        io_requestor_0_ordered_0 = io_mem_ordered_0;
  wire        io_requestor_0_perf_acquire_0 = io_mem_perf_acquire_0;
  wire        io_requestor_0_perf_release_0 = io_mem_perf_release_0;
  wire        io_requestor_0_perf_grant_0 = io_mem_perf_grant_0;
  wire        io_requestor_0_perf_blocked_0 = io_mem_perf_blocked_0;
  wire        io_requestor_0_perf_canAcceptStoreThenLoad_0 =
    io_mem_perf_canAcceptStoreThenLoad_0;
  wire        io_requestor_0_perf_canAcceptStoreThenRMW_0 =
    io_mem_perf_canAcceptStoreThenRMW_0;
  wire        io_requestor_0_perf_canAcceptLoadThenLoad_0 =
    io_mem_perf_canAcceptLoadThenLoad_0;
  wire        io_requestor_0_perf_storeBufferEmptyAfterLoad_0 =
    io_mem_perf_storeBufferEmptyAfterLoad_0;
  wire        io_requestor_0_perf_storeBufferEmptyAfterStore_0 =
    io_mem_perf_storeBufferEmptyAfterStore_0;
  assign io_requestor_0_req_ready = io_requestor_0_req_ready_0;
  assign io_requestor_0_s2_nack = io_requestor_0_s2_nack_0;
  assign io_requestor_0_s2_nack_cause_raw = io_requestor_0_s2_nack_cause_raw_0;
  assign io_requestor_0_s2_uncached = io_requestor_0_s2_uncached_0;
  assign io_requestor_0_s2_paddr = io_requestor_0_s2_paddr_0;
  assign io_requestor_0_resp_valid = io_requestor_0_resp_valid_0;
  assign io_requestor_0_resp_bits_addr = io_requestor_0_resp_bits_addr_0;
  assign io_requestor_0_resp_bits_tag = io_requestor_0_resp_bits_tag_0;
  assign io_requestor_0_resp_bits_cmd = io_requestor_0_resp_bits_cmd_0;
  assign io_requestor_0_resp_bits_size = io_requestor_0_resp_bits_size_0;
  assign io_requestor_0_resp_bits_signed = io_requestor_0_resp_bits_signed_0;
  assign io_requestor_0_resp_bits_dprv = io_requestor_0_resp_bits_dprv_0;
  assign io_requestor_0_resp_bits_dv = io_requestor_0_resp_bits_dv_0;
  assign io_requestor_0_resp_bits_data = io_requestor_0_resp_bits_data_0;
  assign io_requestor_0_resp_bits_mask = io_requestor_0_resp_bits_mask_0;
  assign io_requestor_0_resp_bits_replay = io_requestor_0_resp_bits_replay_0;
  assign io_requestor_0_resp_bits_has_data = io_requestor_0_resp_bits_has_data_0;
  assign io_requestor_0_resp_bits_data_word_bypass =
    io_requestor_0_resp_bits_data_word_bypass_0;
  assign io_requestor_0_resp_bits_data_raw = io_requestor_0_resp_bits_data_raw_0;
  assign io_requestor_0_resp_bits_store_data = io_requestor_0_resp_bits_store_data_0;
  assign io_requestor_0_replay_next = io_requestor_0_replay_next_0;
  assign io_requestor_0_s2_xcpt_ma_ld = io_requestor_0_s2_xcpt_ma_ld_0;
  assign io_requestor_0_s2_xcpt_ma_st = io_requestor_0_s2_xcpt_ma_st_0;
  assign io_requestor_0_s2_xcpt_pf_ld = io_requestor_0_s2_xcpt_pf_ld_0;
  assign io_requestor_0_s2_xcpt_pf_st = io_requestor_0_s2_xcpt_pf_st_0;
  assign io_requestor_0_s2_xcpt_ae_ld = io_requestor_0_s2_xcpt_ae_ld_0;
  assign io_requestor_0_s2_xcpt_ae_st = io_requestor_0_s2_xcpt_ae_st_0;
  assign io_requestor_0_s2_gpa = io_requestor_0_s2_gpa_0;
  assign io_requestor_0_ordered = io_requestor_0_ordered_0;
  assign io_requestor_0_perf_acquire = io_requestor_0_perf_acquire_0;
  assign io_requestor_0_perf_release = io_requestor_0_perf_release_0;
  assign io_requestor_0_perf_grant = io_requestor_0_perf_grant_0;
  assign io_requestor_0_perf_blocked = io_requestor_0_perf_blocked_0;
  assign io_requestor_0_perf_canAcceptStoreThenLoad =
    io_requestor_0_perf_canAcceptStoreThenLoad_0;
  assign io_requestor_0_perf_canAcceptStoreThenRMW =
    io_requestor_0_perf_canAcceptStoreThenRMW_0;
  assign io_requestor_0_perf_canAcceptLoadThenLoad =
    io_requestor_0_perf_canAcceptLoadThenLoad_0;
  assign io_requestor_0_perf_storeBufferEmptyAfterLoad =
    io_requestor_0_perf_storeBufferEmptyAfterLoad_0;
  assign io_requestor_0_perf_storeBufferEmptyAfterStore =
    io_requestor_0_perf_storeBufferEmptyAfterStore_0;
  assign io_mem_req_valid = io_mem_req_valid_0;
  assign io_mem_req_bits_addr = io_mem_req_bits_addr_0;
  assign io_mem_req_bits_tag = io_mem_req_bits_tag_0;
  assign io_mem_req_bits_cmd = io_mem_req_bits_cmd_0;
  assign io_mem_req_bits_size = io_mem_req_bits_size_0;
  assign io_mem_req_bits_signed = io_mem_req_bits_signed_0;
  assign io_mem_req_bits_dv = io_mem_req_bits_dv_0;
  assign io_mem_s1_kill = io_mem_s1_kill_0;
  assign io_mem_s1_data_data = io_mem_s1_data_data_0;
  assign io_mem_keep_clock_enabled = io_mem_keep_clock_enabled_0;
endmodule

