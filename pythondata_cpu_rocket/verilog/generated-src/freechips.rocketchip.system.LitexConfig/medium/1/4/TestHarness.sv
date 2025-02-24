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

module TestHarness(
  input  clock,
         reset,
  output io_success	// src/main/scala/system/TestHarness.scala:12:14
);

  wire         _SimDTM_debug_req_valid;	// src/main/scala/devices/debug/Periphery.scala:258:25
  wire [6:0]   _SimDTM_debug_req_bits_addr;	// src/main/scala/devices/debug/Periphery.scala:258:25
  wire [31:0]  _SimDTM_debug_req_bits_data;	// src/main/scala/devices/debug/Periphery.scala:258:25
  wire [1:0]   _SimDTM_debug_req_bits_op;	// src/main/scala/devices/debug/Periphery.scala:258:25
  wire         _SimDTM_debug_resp_ready;	// src/main/scala/devices/debug/Periphery.scala:258:25
  wire [31:0]  _SimDTM_exit;	// src/main/scala/devices/debug/Periphery.scala:258:25
  wire         _gated_clock_debug_clock_gate_out;	// src/main/scala/util/ClockGate.scala:36:20
  wire         _debug_reset_syncd_debug_reset_sync_io_q;	// src/main/scala/util/ShiftReg.scala:45:23
  wire         _mmio_mem_io_axi4_0_aw_ready;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire         _mmio_mem_io_axi4_0_w_ready;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire         _mmio_mem_io_axi4_0_b_valid;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire [3:0]   _mmio_mem_io_axi4_0_b_bits_id;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire [1:0]   _mmio_mem_io_axi4_0_b_bits_resp;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire         _mmio_mem_io_axi4_0_ar_ready;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire         _mmio_mem_io_axi4_0_r_valid;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire [3:0]   _mmio_mem_io_axi4_0_r_bits_id;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire [63:0]  _mmio_mem_io_axi4_0_r_bits_data;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire [1:0]   _mmio_mem_io_axi4_0_r_bits_resp;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire         _mmio_mem_io_axi4_0_r_bits_last;	// src/main/scala/system/SimAXIMem.scala:38:13
  wire         _mem_io_axi4_0_aw_ready;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire         _mem_io_axi4_0_w_ready;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire         _mem_io_axi4_0_b_valid;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire [3:0]   _mem_io_axi4_0_b_bits_id;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire [1:0]   _mem_io_axi4_0_b_bits_resp;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire         _mem_io_axi4_0_ar_ready;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire         _mem_io_axi4_0_r_valid;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire [3:0]   _mem_io_axi4_0_r_bits_id;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire [255:0] _mem_io_axi4_0_r_bits_data;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire [1:0]   _mem_io_axi4_0_r_bits_resp;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire         _mem_io_axi4_0_r_bits_last;	// src/main/scala/system/SimAXIMem.scala:47:13
  wire         _ldut_reset_reg_io_q;	// src/main/scala/util/AsyncResetReg.scala:86:21
  wire         _ldut_debug_clockeddmi_dmi_req_ready;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_debug_clockeddmi_dmi_resp_valid;	// src/main/scala/system/TestHarness.scala:17:19
  wire [31:0]  _ldut_debug_clockeddmi_dmi_resp_bits_data;	// src/main/scala/system/TestHarness.scala:17:19
  wire [1:0]   _ldut_debug_clockeddmi_dmi_resp_bits_resp;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_debug_ndreset;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_debug_dmactive;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mem_axi4_0_aw_valid;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mem_axi4_0_aw_bits_id;	// src/main/scala/system/TestHarness.scala:17:19
  wire [31:0]  _ldut_mem_axi4_0_aw_bits_addr;	// src/main/scala/system/TestHarness.scala:17:19
  wire [7:0]   _ldut_mem_axi4_0_aw_bits_len;	// src/main/scala/system/TestHarness.scala:17:19
  wire [2:0]   _ldut_mem_axi4_0_aw_bits_size;	// src/main/scala/system/TestHarness.scala:17:19
  wire [1:0]   _ldut_mem_axi4_0_aw_bits_burst;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mem_axi4_0_aw_bits_lock;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mem_axi4_0_aw_bits_cache;	// src/main/scala/system/TestHarness.scala:17:19
  wire [2:0]   _ldut_mem_axi4_0_aw_bits_prot;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mem_axi4_0_aw_bits_qos;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mem_axi4_0_w_valid;	// src/main/scala/system/TestHarness.scala:17:19
  wire [255:0] _ldut_mem_axi4_0_w_bits_data;	// src/main/scala/system/TestHarness.scala:17:19
  wire [31:0]  _ldut_mem_axi4_0_w_bits_strb;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mem_axi4_0_w_bits_last;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mem_axi4_0_b_ready;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mem_axi4_0_ar_valid;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mem_axi4_0_ar_bits_id;	// src/main/scala/system/TestHarness.scala:17:19
  wire [31:0]  _ldut_mem_axi4_0_ar_bits_addr;	// src/main/scala/system/TestHarness.scala:17:19
  wire [7:0]   _ldut_mem_axi4_0_ar_bits_len;	// src/main/scala/system/TestHarness.scala:17:19
  wire [2:0]   _ldut_mem_axi4_0_ar_bits_size;	// src/main/scala/system/TestHarness.scala:17:19
  wire [1:0]   _ldut_mem_axi4_0_ar_bits_burst;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mem_axi4_0_ar_bits_lock;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mem_axi4_0_ar_bits_cache;	// src/main/scala/system/TestHarness.scala:17:19
  wire [2:0]   _ldut_mem_axi4_0_ar_bits_prot;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mem_axi4_0_ar_bits_qos;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mem_axi4_0_r_ready;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mmio_axi4_0_aw_valid;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mmio_axi4_0_aw_bits_id;	// src/main/scala/system/TestHarness.scala:17:19
  wire [30:0]  _ldut_mmio_axi4_0_aw_bits_addr;	// src/main/scala/system/TestHarness.scala:17:19
  wire [7:0]   _ldut_mmio_axi4_0_aw_bits_len;	// src/main/scala/system/TestHarness.scala:17:19
  wire [2:0]   _ldut_mmio_axi4_0_aw_bits_size;	// src/main/scala/system/TestHarness.scala:17:19
  wire [1:0]   _ldut_mmio_axi4_0_aw_bits_burst;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mmio_axi4_0_aw_bits_lock;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mmio_axi4_0_aw_bits_cache;	// src/main/scala/system/TestHarness.scala:17:19
  wire [2:0]   _ldut_mmio_axi4_0_aw_bits_prot;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mmio_axi4_0_aw_bits_qos;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mmio_axi4_0_w_valid;	// src/main/scala/system/TestHarness.scala:17:19
  wire [63:0]  _ldut_mmio_axi4_0_w_bits_data;	// src/main/scala/system/TestHarness.scala:17:19
  wire [7:0]   _ldut_mmio_axi4_0_w_bits_strb;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mmio_axi4_0_w_bits_last;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mmio_axi4_0_b_ready;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mmio_axi4_0_ar_valid;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mmio_axi4_0_ar_bits_id;	// src/main/scala/system/TestHarness.scala:17:19
  wire [30:0]  _ldut_mmio_axi4_0_ar_bits_addr;	// src/main/scala/system/TestHarness.scala:17:19
  wire [7:0]   _ldut_mmio_axi4_0_ar_bits_len;	// src/main/scala/system/TestHarness.scala:17:19
  wire [2:0]   _ldut_mmio_axi4_0_ar_bits_size;	// src/main/scala/system/TestHarness.scala:17:19
  wire [1:0]   _ldut_mmio_axi4_0_ar_bits_burst;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mmio_axi4_0_ar_bits_lock;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mmio_axi4_0_ar_bits_cache;	// src/main/scala/system/TestHarness.scala:17:19
  wire [2:0]   _ldut_mmio_axi4_0_ar_bits_prot;	// src/main/scala/system/TestHarness.scala:17:19
  wire [3:0]   _ldut_mmio_axi4_0_ar_bits_qos;	// src/main/scala/system/TestHarness.scala:17:19
  wire         _ldut_mmio_axi4_0_r_ready;	// src/main/scala/system/TestHarness.scala:17:19
  wire         dmi_reset = reset;	// src/main/scala/devices/debug/Periphery.scala:278:65
  wire         debug_reset_syncd;	// src/main/scala/devices/debug/Periphery.scala:287:40
  assign debug_reset_syncd = ~_debug_reset_syncd_debug_reset_sync_io_q;	// src/main/scala/devices/debug/Periphery.scala:287:40, src/main/scala/util/ShiftReg.scala:45:23
  wire         debug_reset = debug_reset_syncd;	// src/main/scala/devices/debug/Periphery.scala:285:27, :287:40
  reg          clock_en;	// src/main/scala/devices/debug/Periphery.scala:295:29
  wire         io_success_0 = _SimDTM_exit == 32'h1;	// src/main/scala/devices/debug/Periphery.scala:199:26, :258:25
  `ifndef SYNTHESIS	// src/main/scala/devices/debug/Periphery.scala:200:11
    always @(posedge clock) begin	// src/main/scala/devices/debug/Periphery.scala:200:11
      if (~reset & (|(_SimDTM_exit[31:1]))) begin	// src/main/scala/devices/debug/Periphery.scala:200:{11,20,72}, :258:25, src/main/scala/util/AsyncResetReg.scala:89:15
        if (`ASSERT_VERBOSE_COND_)	// src/main/scala/devices/debug/Periphery.scala:200:11
          $error("Assertion failed: *** FAILED *** (exit code = %d)\n\n    at Periphery.scala:200 assert(io.exit < 2.U, \"*** FAILED *** (exit code = %%%%d)\\n\", io.exit >> 1.U)\n",
                 {1'h0, _SimDTM_exit[31:1]});	// src/main/scala/devices/debug/Periphery.scala:200:{11,72}, :258:25, src/main/scala/util/AsyncResetReg.scala:89:15
        if (`STOP_COND_)	// src/main/scala/devices/debug/Periphery.scala:200:11
          $fatal;	// src/main/scala/devices/debug/Periphery.scala:200:11
      end
    end // always @(posedge)
  `endif // not def SYNTHESIS
  wire         dmactiveAck;	// src/main/scala/util/ShiftReg.scala:48:24
  always @(posedge clock or posedge debug_reset) begin	// src/main/scala/devices/debug/Periphery.scala:285:27
    if (debug_reset)	// src/main/scala/devices/debug/Periphery.scala:285:27
      clock_en <= 1'h1;	// src/main/scala/devices/debug/Periphery.scala:295:29
    else
      clock_en <= dmactiveAck;	// src/main/scala/devices/debug/Periphery.scala:295:29, src/main/scala/util/ShiftReg.scala:48:24
  end // always @(posedge, posedge)
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
        clock_en = _RANDOM[/*Zero width*/ 1'b0][0];	// src/main/scala/devices/debug/Periphery.scala:295:29
      `endif // RANDOMIZE_REG_INIT
      if (debug_reset)	// src/main/scala/devices/debug/Periphery.scala:285:27
        clock_en = 1'h1;	// src/main/scala/devices/debug/Periphery.scala:295:29
    end // initial
    `ifdef FIRRTL_AFTER_INITIAL
      `FIRRTL_AFTER_INITIAL
    `endif // FIRRTL_AFTER_INITIAL
  `endif // ENABLE_INITIAL_REG_
  ExampleRocketSystem ldut (	// src/main/scala/system/TestHarness.scala:17:19
    .clock                                (clock),
    .reset                                (reset | _ldut_reset_reg_io_q),	// src/main/scala/system/TestHarness.scala:20:30, src/main/scala/util/AsyncResetReg.scala:86:21
    .resetctrl_hartIsInReset_0            (reset),
    .debug_clock                          (_gated_clock_debug_clock_gate_out),	// src/main/scala/util/ClockGate.scala:36:20
    .debug_reset                          (debug_reset),	// src/main/scala/devices/debug/Periphery.scala:285:27
    .debug_clockeddmi_dmi_req_ready       (_ldut_debug_clockeddmi_dmi_req_ready),
    .debug_clockeddmi_dmi_req_valid       (_SimDTM_debug_req_valid),	// src/main/scala/devices/debug/Periphery.scala:258:25
    .debug_clockeddmi_dmi_req_bits_addr   (_SimDTM_debug_req_bits_addr),	// src/main/scala/devices/debug/Periphery.scala:258:25
    .debug_clockeddmi_dmi_req_bits_data   (_SimDTM_debug_req_bits_data),	// src/main/scala/devices/debug/Periphery.scala:258:25
    .debug_clockeddmi_dmi_req_bits_op     (_SimDTM_debug_req_bits_op),	// src/main/scala/devices/debug/Periphery.scala:258:25
    .debug_clockeddmi_dmi_resp_ready      (_SimDTM_debug_resp_ready),	// src/main/scala/devices/debug/Periphery.scala:258:25
    .debug_clockeddmi_dmi_resp_valid      (_ldut_debug_clockeddmi_dmi_resp_valid),
    .debug_clockeddmi_dmi_resp_bits_data  (_ldut_debug_clockeddmi_dmi_resp_bits_data),
    .debug_clockeddmi_dmi_resp_bits_resp  (_ldut_debug_clockeddmi_dmi_resp_bits_resp),
    .debug_clockeddmi_dmiClock            (clock),
    .debug_clockeddmi_dmiReset            (reset),
    .debug_ndreset                        (_ldut_debug_ndreset),
    .debug_dmactive                       (_ldut_debug_dmactive),
    .debug_dmactiveAck                    (dmactiveAck),	// src/main/scala/util/ShiftReg.scala:48:24
    .mem_axi4_0_aw_ready                  (_mem_io_axi4_0_aw_ready),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mem_axi4_0_aw_valid                  (_ldut_mem_axi4_0_aw_valid),
    .mem_axi4_0_aw_bits_id                (_ldut_mem_axi4_0_aw_bits_id),
    .mem_axi4_0_aw_bits_addr              (_ldut_mem_axi4_0_aw_bits_addr),
    .mem_axi4_0_aw_bits_len               (_ldut_mem_axi4_0_aw_bits_len),
    .mem_axi4_0_aw_bits_size              (_ldut_mem_axi4_0_aw_bits_size),
    .mem_axi4_0_aw_bits_burst             (_ldut_mem_axi4_0_aw_bits_burst),
    .mem_axi4_0_aw_bits_lock              (_ldut_mem_axi4_0_aw_bits_lock),
    .mem_axi4_0_aw_bits_cache             (_ldut_mem_axi4_0_aw_bits_cache),
    .mem_axi4_0_aw_bits_prot              (_ldut_mem_axi4_0_aw_bits_prot),
    .mem_axi4_0_aw_bits_qos               (_ldut_mem_axi4_0_aw_bits_qos),
    .mem_axi4_0_w_ready                   (_mem_io_axi4_0_w_ready),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mem_axi4_0_w_valid                   (_ldut_mem_axi4_0_w_valid),
    .mem_axi4_0_w_bits_data               (_ldut_mem_axi4_0_w_bits_data),
    .mem_axi4_0_w_bits_strb               (_ldut_mem_axi4_0_w_bits_strb),
    .mem_axi4_0_w_bits_last               (_ldut_mem_axi4_0_w_bits_last),
    .mem_axi4_0_b_ready                   (_ldut_mem_axi4_0_b_ready),
    .mem_axi4_0_b_valid                   (_mem_io_axi4_0_b_valid),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mem_axi4_0_b_bits_id                 (_mem_io_axi4_0_b_bits_id),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mem_axi4_0_b_bits_resp               (_mem_io_axi4_0_b_bits_resp),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mem_axi4_0_ar_ready                  (_mem_io_axi4_0_ar_ready),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mem_axi4_0_ar_valid                  (_ldut_mem_axi4_0_ar_valid),
    .mem_axi4_0_ar_bits_id                (_ldut_mem_axi4_0_ar_bits_id),
    .mem_axi4_0_ar_bits_addr              (_ldut_mem_axi4_0_ar_bits_addr),
    .mem_axi4_0_ar_bits_len               (_ldut_mem_axi4_0_ar_bits_len),
    .mem_axi4_0_ar_bits_size              (_ldut_mem_axi4_0_ar_bits_size),
    .mem_axi4_0_ar_bits_burst             (_ldut_mem_axi4_0_ar_bits_burst),
    .mem_axi4_0_ar_bits_lock              (_ldut_mem_axi4_0_ar_bits_lock),
    .mem_axi4_0_ar_bits_cache             (_ldut_mem_axi4_0_ar_bits_cache),
    .mem_axi4_0_ar_bits_prot              (_ldut_mem_axi4_0_ar_bits_prot),
    .mem_axi4_0_ar_bits_qos               (_ldut_mem_axi4_0_ar_bits_qos),
    .mem_axi4_0_r_ready                   (_ldut_mem_axi4_0_r_ready),
    .mem_axi4_0_r_valid                   (_mem_io_axi4_0_r_valid),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mem_axi4_0_r_bits_id                 (_mem_io_axi4_0_r_bits_id),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mem_axi4_0_r_bits_data               (_mem_io_axi4_0_r_bits_data),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mem_axi4_0_r_bits_resp               (_mem_io_axi4_0_r_bits_resp),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mem_axi4_0_r_bits_last               (_mem_io_axi4_0_r_bits_last),	// src/main/scala/system/SimAXIMem.scala:47:13
    .mmio_axi4_0_aw_ready                 (_mmio_mem_io_axi4_0_aw_ready),	// src/main/scala/system/SimAXIMem.scala:38:13
    .mmio_axi4_0_aw_valid                 (_ldut_mmio_axi4_0_aw_valid),
    .mmio_axi4_0_aw_bits_id               (_ldut_mmio_axi4_0_aw_bits_id),
    .mmio_axi4_0_aw_bits_addr             (_ldut_mmio_axi4_0_aw_bits_addr),
    .mmio_axi4_0_aw_bits_len              (_ldut_mmio_axi4_0_aw_bits_len),
    .mmio_axi4_0_aw_bits_size             (_ldut_mmio_axi4_0_aw_bits_size),
    .mmio_axi4_0_aw_bits_burst            (_ldut_mmio_axi4_0_aw_bits_burst),
    .mmio_axi4_0_aw_bits_lock             (_ldut_mmio_axi4_0_aw_bits_lock),
    .mmio_axi4_0_aw_bits_cache            (_ldut_mmio_axi4_0_aw_bits_cache),
    .mmio_axi4_0_aw_bits_prot             (_ldut_mmio_axi4_0_aw_bits_prot),
    .mmio_axi4_0_aw_bits_qos              (_ldut_mmio_axi4_0_aw_bits_qos),
    .mmio_axi4_0_w_ready                  (_mmio_mem_io_axi4_0_w_ready),	// src/main/scala/system/SimAXIMem.scala:38:13
    .mmio_axi4_0_w_valid                  (_ldut_mmio_axi4_0_w_valid),
    .mmio_axi4_0_w_bits_data              (_ldut_mmio_axi4_0_w_bits_data),
    .mmio_axi4_0_w_bits_strb              (_ldut_mmio_axi4_0_w_bits_strb),
    .mmio_axi4_0_w_bits_last              (_ldut_mmio_axi4_0_w_bits_last),
    .mmio_axi4_0_b_ready                  (_ldut_mmio_axi4_0_b_ready),
    .mmio_axi4_0_b_valid                  (_mmio_mem_io_axi4_0_b_valid),	// src/main/scala/system/SimAXIMem.scala:38:13
    .mmio_axi4_0_b_bits_id                (_mmio_mem_io_axi4_0_b_bits_id),	// src/main/scala/system/SimAXIMem.scala:38:13
    .mmio_axi4_0_b_bits_resp              (_mmio_mem_io_axi4_0_b_bits_resp),	// src/main/scala/system/SimAXIMem.scala:38:13
    .mmio_axi4_0_ar_ready                 (_mmio_mem_io_axi4_0_ar_ready),	// src/main/scala/system/SimAXIMem.scala:38:13
    .mmio_axi4_0_ar_valid                 (_ldut_mmio_axi4_0_ar_valid),
    .mmio_axi4_0_ar_bits_id               (_ldut_mmio_axi4_0_ar_bits_id),
    .mmio_axi4_0_ar_bits_addr             (_ldut_mmio_axi4_0_ar_bits_addr),
    .mmio_axi4_0_ar_bits_len              (_ldut_mmio_axi4_0_ar_bits_len),
    .mmio_axi4_0_ar_bits_size             (_ldut_mmio_axi4_0_ar_bits_size),
    .mmio_axi4_0_ar_bits_burst            (_ldut_mmio_axi4_0_ar_bits_burst),
    .mmio_axi4_0_ar_bits_lock             (_ldut_mmio_axi4_0_ar_bits_lock),
    .mmio_axi4_0_ar_bits_cache            (_ldut_mmio_axi4_0_ar_bits_cache),
    .mmio_axi4_0_ar_bits_prot             (_ldut_mmio_axi4_0_ar_bits_prot),
    .mmio_axi4_0_ar_bits_qos              (_ldut_mmio_axi4_0_ar_bits_qos),
    .mmio_axi4_0_r_ready                  (_ldut_mmio_axi4_0_r_ready),
    .mmio_axi4_0_r_valid                  (_mmio_mem_io_axi4_0_r_valid),	// src/main/scala/system/SimAXIMem.scala:38:13
    .mmio_axi4_0_r_bits_id                (_mmio_mem_io_axi4_0_r_bits_id),	// src/main/scala/system/SimAXIMem.scala:38:13
    .mmio_axi4_0_r_bits_data              (_mmio_mem_io_axi4_0_r_bits_data),	// src/main/scala/system/SimAXIMem.scala:38:13
    .mmio_axi4_0_r_bits_resp              (_mmio_mem_io_axi4_0_r_bits_resp),	// src/main/scala/system/SimAXIMem.scala:38:13
    .mmio_axi4_0_r_bits_last              (_mmio_mem_io_axi4_0_r_bits_last),	// src/main/scala/system/SimAXIMem.scala:38:13
    .l2_frontend_bus_axi4_0_aw_ready      (/* unused */),
    .l2_frontend_bus_axi4_0_aw_valid      (1'h0),
    .l2_frontend_bus_axi4_0_aw_bits_id    (8'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_aw_bits_addr  (32'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_aw_bits_len   (8'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_aw_bits_size  (3'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_aw_bits_burst (2'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_aw_bits_lock  (1'h0),
    .l2_frontend_bus_axi4_0_aw_bits_cache (4'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_aw_bits_prot  (3'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_aw_bits_qos   (4'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_w_ready       (/* unused */),
    .l2_frontend_bus_axi4_0_w_valid       (1'h0),
    .l2_frontend_bus_axi4_0_w_bits_data   (64'h0),	// src/main/scala/system/TestHarness.scala:32:14
    .l2_frontend_bus_axi4_0_w_bits_strb   (8'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_w_bits_last   (1'h0),
    .l2_frontend_bus_axi4_0_b_ready       (1'h0),
    .l2_frontend_bus_axi4_0_b_valid       (/* unused */),
    .l2_frontend_bus_axi4_0_b_bits_id     (/* unused */),
    .l2_frontend_bus_axi4_0_b_bits_resp   (/* unused */),
    .l2_frontend_bus_axi4_0_ar_ready      (/* unused */),
    .l2_frontend_bus_axi4_0_ar_valid      (1'h0),
    .l2_frontend_bus_axi4_0_ar_bits_id    (8'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_ar_bits_addr  (32'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_ar_bits_len   (8'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_ar_bits_size  (3'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_ar_bits_burst (2'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_ar_bits_lock  (1'h0),
    .l2_frontend_bus_axi4_0_ar_bits_cache (4'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_ar_bits_prot  (3'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_ar_bits_qos   (4'h0),	// src/main/scala/system/TestHarness.scala:28:15
    .l2_frontend_bus_axi4_0_r_ready       (1'h0),
    .l2_frontend_bus_axi4_0_r_valid       (/* unused */),
    .l2_frontend_bus_axi4_0_r_bits_id     (/* unused */),
    .l2_frontend_bus_axi4_0_r_bits_data   (/* unused */),
    .l2_frontend_bus_axi4_0_r_bits_resp   (/* unused */),
    .l2_frontend_bus_axi4_0_r_bits_last   (/* unused */),
    .interrupts                           (8'h0)	// src/main/scala/system/TestHarness.scala:28:15
  );
  AsyncResetRegVec_w1_i0 ldut_reset_reg (	// src/main/scala/util/AsyncResetReg.scala:86:21
    .clock (clock),
    .reset (reset),
    .io_d  (_ldut_debug_ndreset),	// src/main/scala/system/TestHarness.scala:17:19
    .io_q  (_ldut_reset_reg_io_q)
  );
  SimAXIMem mem (	// src/main/scala/system/SimAXIMem.scala:47:13
    .clock                   (clock),
    .reset                   (reset),
    .io_axi4_0_aw_ready      (_mem_io_axi4_0_aw_ready),
    .io_axi4_0_aw_valid      (_ldut_mem_axi4_0_aw_valid),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_id    (_ldut_mem_axi4_0_aw_bits_id),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_addr  (_ldut_mem_axi4_0_aw_bits_addr),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_len   (_ldut_mem_axi4_0_aw_bits_len),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_size  (_ldut_mem_axi4_0_aw_bits_size),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_burst (_ldut_mem_axi4_0_aw_bits_burst),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_lock  (_ldut_mem_axi4_0_aw_bits_lock),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_cache (_ldut_mem_axi4_0_aw_bits_cache),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_prot  (_ldut_mem_axi4_0_aw_bits_prot),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_qos   (_ldut_mem_axi4_0_aw_bits_qos),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_w_ready       (_mem_io_axi4_0_w_ready),
    .io_axi4_0_w_valid       (_ldut_mem_axi4_0_w_valid),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_w_bits_data   (_ldut_mem_axi4_0_w_bits_data),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_w_bits_strb   (_ldut_mem_axi4_0_w_bits_strb),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_w_bits_last   (_ldut_mem_axi4_0_w_bits_last),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_b_ready       (_ldut_mem_axi4_0_b_ready),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_b_valid       (_mem_io_axi4_0_b_valid),
    .io_axi4_0_b_bits_id     (_mem_io_axi4_0_b_bits_id),
    .io_axi4_0_b_bits_resp   (_mem_io_axi4_0_b_bits_resp),
    .io_axi4_0_ar_ready      (_mem_io_axi4_0_ar_ready),
    .io_axi4_0_ar_valid      (_ldut_mem_axi4_0_ar_valid),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_id    (_ldut_mem_axi4_0_ar_bits_id),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_addr  (_ldut_mem_axi4_0_ar_bits_addr),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_len   (_ldut_mem_axi4_0_ar_bits_len),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_size  (_ldut_mem_axi4_0_ar_bits_size),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_burst (_ldut_mem_axi4_0_ar_bits_burst),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_lock  (_ldut_mem_axi4_0_ar_bits_lock),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_cache (_ldut_mem_axi4_0_ar_bits_cache),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_prot  (_ldut_mem_axi4_0_ar_bits_prot),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_qos   (_ldut_mem_axi4_0_ar_bits_qos),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_r_ready       (_ldut_mem_axi4_0_r_ready),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_r_valid       (_mem_io_axi4_0_r_valid),
    .io_axi4_0_r_bits_id     (_mem_io_axi4_0_r_bits_id),
    .io_axi4_0_r_bits_data   (_mem_io_axi4_0_r_bits_data),
    .io_axi4_0_r_bits_resp   (_mem_io_axi4_0_r_bits_resp),
    .io_axi4_0_r_bits_last   (_mem_io_axi4_0_r_bits_last)
  );
  SimAXIMem_1 mmio_mem (	// src/main/scala/system/SimAXIMem.scala:38:13
    .clock                   (clock),
    .reset                   (reset),
    .io_axi4_0_aw_ready      (_mmio_mem_io_axi4_0_aw_ready),
    .io_axi4_0_aw_valid      (_ldut_mmio_axi4_0_aw_valid),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_id    (_ldut_mmio_axi4_0_aw_bits_id),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_addr  (_ldut_mmio_axi4_0_aw_bits_addr[28:0]),	// src/main/scala/system/SimAXIMem.scala:39:29, src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_len   (_ldut_mmio_axi4_0_aw_bits_len),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_size  (_ldut_mmio_axi4_0_aw_bits_size),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_burst (_ldut_mmio_axi4_0_aw_bits_burst),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_lock  (_ldut_mmio_axi4_0_aw_bits_lock),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_cache (_ldut_mmio_axi4_0_aw_bits_cache),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_prot  (_ldut_mmio_axi4_0_aw_bits_prot),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_aw_bits_qos   (_ldut_mmio_axi4_0_aw_bits_qos),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_w_ready       (_mmio_mem_io_axi4_0_w_ready),
    .io_axi4_0_w_valid       (_ldut_mmio_axi4_0_w_valid),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_w_bits_data   (_ldut_mmio_axi4_0_w_bits_data),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_w_bits_strb   (_ldut_mmio_axi4_0_w_bits_strb),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_w_bits_last   (_ldut_mmio_axi4_0_w_bits_last),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_b_ready       (_ldut_mmio_axi4_0_b_ready),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_b_valid       (_mmio_mem_io_axi4_0_b_valid),
    .io_axi4_0_b_bits_id     (_mmio_mem_io_axi4_0_b_bits_id),
    .io_axi4_0_b_bits_resp   (_mmio_mem_io_axi4_0_b_bits_resp),
    .io_axi4_0_ar_ready      (_mmio_mem_io_axi4_0_ar_ready),
    .io_axi4_0_ar_valid      (_ldut_mmio_axi4_0_ar_valid),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_id    (_ldut_mmio_axi4_0_ar_bits_id),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_addr  (_ldut_mmio_axi4_0_ar_bits_addr[28:0]),	// src/main/scala/system/SimAXIMem.scala:39:29, src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_len   (_ldut_mmio_axi4_0_ar_bits_len),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_size  (_ldut_mmio_axi4_0_ar_bits_size),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_burst (_ldut_mmio_axi4_0_ar_bits_burst),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_lock  (_ldut_mmio_axi4_0_ar_bits_lock),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_cache (_ldut_mmio_axi4_0_ar_bits_cache),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_prot  (_ldut_mmio_axi4_0_ar_bits_prot),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_ar_bits_qos   (_ldut_mmio_axi4_0_ar_bits_qos),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_r_ready       (_ldut_mmio_axi4_0_r_ready),	// src/main/scala/system/TestHarness.scala:17:19
    .io_axi4_0_r_valid       (_mmio_mem_io_axi4_0_r_valid),
    .io_axi4_0_r_bits_id     (_mmio_mem_io_axi4_0_r_bits_id),
    .io_axi4_0_r_bits_data   (_mmio_mem_io_axi4_0_r_bits_data),
    .io_axi4_0_r_bits_resp   (_mmio_mem_io_axi4_0_r_bits_resp),
    .io_axi4_0_r_bits_last   (_mmio_mem_io_axi4_0_r_bits_last)
  );
  AsyncResetSynchronizerShiftReg_w1_d3_i0 debug_reset_syncd_debug_reset_sync (	// src/main/scala/util/ShiftReg.scala:45:23
    .clock (clock),
    .reset (dmi_reset),	// src/main/scala/devices/debug/Periphery.scala:278:65
    .io_d  (1'h1),
    .io_q  (_debug_reset_syncd_debug_reset_sync_io_q)
  );
  ResetSynchronizerShiftReg_w1_d3_i0 dmactiveAck_dmactiveAck (	// src/main/scala/util/ShiftReg.scala:45:23
    .clock (clock),
    .reset (debug_reset),	// src/main/scala/devices/debug/Periphery.scala:285:27
    .io_d  (_ldut_debug_dmactive),	// src/main/scala/system/TestHarness.scala:17:19
    .io_q  (dmactiveAck)
  );
  EICG_wrapper gated_clock_debug_clock_gate (	// src/main/scala/util/ClockGate.scala:36:20
    .in      (clock),
    .test_en (1'h0),
    .en      (clock_en),	// src/main/scala/devices/debug/Periphery.scala:295:29
    .out     (_gated_clock_debug_clock_gate_out)
  );
  SimDTM SimDTM (	// src/main/scala/devices/debug/Periphery.scala:258:25
    .clk                  (clock),
    .reset                (reset),
    .debug_req_ready      (_ldut_debug_clockeddmi_dmi_req_ready),	// src/main/scala/system/TestHarness.scala:17:19
    .debug_req_valid      (_SimDTM_debug_req_valid),
    .debug_req_bits_addr  (_SimDTM_debug_req_bits_addr),
    .debug_req_bits_data  (_SimDTM_debug_req_bits_data),
    .debug_req_bits_op    (_SimDTM_debug_req_bits_op),
    .debug_resp_ready     (_SimDTM_debug_resp_ready),
    .debug_resp_valid     (_ldut_debug_clockeddmi_dmi_resp_valid),	// src/main/scala/system/TestHarness.scala:17:19
    .debug_resp_bits_data (_ldut_debug_clockeddmi_dmi_resp_bits_data),	// src/main/scala/system/TestHarness.scala:17:19
    .debug_resp_bits_resp (_ldut_debug_clockeddmi_dmi_resp_bits_resp),	// src/main/scala/system/TestHarness.scala:17:19
    .exit                 (_SimDTM_exit)
  );
  assign io_success = io_success_0;
endmodule

