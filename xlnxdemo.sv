////////////////////////////////////////////////////////////////////////////////
//
// Filename: 	xlnxdemo.v
//
// Project:	WB2AXIPSP: bus bridges and other odds and ends
// {{{
// Purpose:	To test the formal tools on an AXI-lite core that is "known"
//		to work.  (Only this one doesn't--at least that was my purpose.
//	Most of this code comes directly from Vivado's core generator--starting
//	at the end of this comment block and going down directly to the
//	`ifdef	FORMAL block at the bottom.  I have made superficial adjustments
//	to Xilinx's code: I swapped spaces for tabs, I removed any white space
//	at the ends of lines, I fixed a spelling error in the comments, added
//	the default_nettype, added initial statements (at the bottom) for things
//	that should've had them in the first place, etc.  I may have even
//	swapped an always @(somevalue) for an always @(*), but that's as far
//	as I've gone.
//
//	Since 2016, Vivado has made updates to their core.  The last time I
//	checked, however, it still failed to pass a formal verification check.
// }}}
//	This core will fail a verification check.
//
// Creator:	Vivado, 2016 (I think it was 2016.1)
// {{{
////////////////////////////////////////////////////////////////////////////////
//
//
`default_nettype none	// Added to the raw demo
`timescale 1 ns / 1 ps
// }}}
module xlnxdemo #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		// Width of S_AXI address bus
		parameter integer C_S_AXI_ADDR_WIDTH	= 7,
`ifdef	FORMAL
		parameter [0:0] OPT_ASSUME_NO_ERRORS = 1'b0
`endif
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal
		input wire  S_AXI_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  S_AXI_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  S_AXI_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  S_AXI_AWREADY,
		// Write data (issued by master, acceped by Slave)
		input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.
		input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  S_AXI_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  S_AXI_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] S_AXI_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  S_AXI_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  S_AXI_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] S_AXI_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  S_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  S_AXI_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] S_AXI_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  S_AXI_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  S_AXI_RREADY
	);

	// AXI4LITE signals
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [C_S_AXI_DATA_WIDTH-1 : 0] 	axi_rdata;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 4;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 32
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg6;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg7;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg8;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg9;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg10;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg11;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg12;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg13;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg14;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg15;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg16;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg17;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg18;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg19;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg20;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg21;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg22;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg23;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg24;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg25;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg26;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg27;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg28;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg29;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg30;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg31;
	wire	 slv_reg_rden;
	wire	 slv_reg_wren;
	reg [C_S_AXI_DATA_WIDTH-1:0]	 reg_data_out;
	integer	 byte_index;

	// I/O Connections assignments

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RDATA	= axi_rdata;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awready <= 1'b0;
	    end
	  else
	    begin
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
	        begin
	          // slave is ready to accept write address when
	          // there is a valid write address and write data
	          // on the write address and data bus. This design
	          // expects no outstanding transactions.
	          axi_awready <= 1'b1;
	        end
	      else
	        begin
	          axi_awready <= 1'b0;
	        end
	    end
	end

	// Implement axi_awaddr latching
	// This process is used to latch the address when both
	// S_AXI_AWVALID and S_AXI_WVALID are valid.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end
	  else
	    begin
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
	        begin
	          // Write Address latching
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end
	end

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end
	  else
	    begin
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
	        begin
	          // slave is ready to accept write data when
	          // there is a valid write address and write data
	          // on the write address and data bus. This design
	          // expects no outstanding transactions.
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end
	end

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      slv_reg0 <= 0;
	      slv_reg1 <= 0;
	      slv_reg2 <= 0;
	      slv_reg3 <= 0;
	      slv_reg4 <= 0;
	      slv_reg5 <= 0;
	      slv_reg6 <= 0;
	      slv_reg7 <= 0;
	      slv_reg8 <= 0;
	      slv_reg9 <= 0;
	      slv_reg10 <= 0;
	      slv_reg11 <= 0;
	      slv_reg12 <= 0;
	      slv_reg13 <= 0;
	      slv_reg14 <= 0;
	      slv_reg15 <= 0;
	      slv_reg16 <= 0;
	      slv_reg17 <= 0;
	      slv_reg18 <= 0;
	      slv_reg19 <= 0;
	      slv_reg20 <= 0;
	      slv_reg21 <= 0;
	      slv_reg22 <= 0;
	      slv_reg23 <= 0;
	      slv_reg24 <= 0;
	      slv_reg25 <= 0;
	      slv_reg26 <= 0;
	      slv_reg27 <= 0;
	      slv_reg28 <= 0;
	      slv_reg29 <= 0;
	      slv_reg30 <= 0;
	      slv_reg31 <= 0;
	    end
	  else begin
	    if (slv_reg_wren)
	      begin
	        case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	          5'h00:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 0
	                slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h01:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 1
	                slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h02:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 2
	                slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h03:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 3
	                slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h04:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 4
	                slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h05:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 5
	                slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h06:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 6
	                slv_reg6[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h07:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 7
	                slv_reg7[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h08:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 8
	                slv_reg8[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h09:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 9
	                slv_reg9[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h0A:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 10
	                slv_reg10[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h0B:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 11
	                slv_reg11[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h0C:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 12
	                slv_reg12[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h0D:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 13
	                slv_reg13[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h0E:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 14
	                slv_reg14[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h0F:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 15
	                slv_reg15[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h10:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 16
	                slv_reg16[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h11:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 17
	                slv_reg17[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h12:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 18
	                slv_reg18[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h13:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 19
	                slv_reg19[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h14:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 20
	                slv_reg20[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h15:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 21
	                slv_reg21[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h16:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 22
	                slv_reg22[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h17:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 23
	                slv_reg23[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h18:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 24
	                slv_reg24[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h19:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 25
	                slv_reg25[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h1A:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 26
	                slv_reg26[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h1B:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 27
	                slv_reg27[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h1C:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 28
	                slv_reg28[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h1D:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 29
	                slv_reg29[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h1E:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 30
	                slv_reg30[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          5'h1F:
	            for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	              if ( S_AXI_WSTRB[byte_index] == 1 ) begin
	                // Respective byte enables are asserted as per write strobes
	                // Slave register 31
	                slv_reg31[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
	              end
	          default : begin
	                      slv_reg0 <= slv_reg0;
	                      slv_reg1 <= slv_reg1;
	                      slv_reg2 <= slv_reg2;
	                      slv_reg3 <= slv_reg3;
	                      slv_reg4 <= slv_reg4;
	                      slv_reg5 <= slv_reg5;
	                      slv_reg6 <= slv_reg6;
	                      slv_reg7 <= slv_reg7;
	                      slv_reg8 <= slv_reg8;
	                      slv_reg9 <= slv_reg9;
	                      slv_reg10 <= slv_reg10;
	                      slv_reg11 <= slv_reg11;
	                      slv_reg12 <= slv_reg12;
	                      slv_reg13 <= slv_reg13;
	                      slv_reg14 <= slv_reg14;
	                      slv_reg15 <= slv_reg15;
	                      slv_reg16 <= slv_reg16;
	                      slv_reg17 <= slv_reg17;
	                      slv_reg18 <= slv_reg18;
	                      slv_reg19 <= slv_reg19;
	                      slv_reg20 <= slv_reg20;
	                      slv_reg21 <= slv_reg21;
	                      slv_reg22 <= slv_reg22;
	                      slv_reg23 <= slv_reg23;
	                      slv_reg24 <= slv_reg24;
	                      slv_reg25 <= slv_reg25;
	                      slv_reg26 <= slv_reg26;
	                      slv_reg27 <= slv_reg27;
	                      slv_reg28 <= slv_reg28;
	                      slv_reg29 <= slv_reg29;
	                      slv_reg30 <= slv_reg30;
	                      slv_reg31 <= slv_reg31;
	                    end
	        endcase
	      end
	  end
	end

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.
	// This marks the acceptance of address and indicates the status of
	// write transaction.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_bvalid  <= 0;
	      axi_bresp   <= 2'b0;
	    end
	  else
	    begin
	      if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
	        begin
	          // indicates a valid write response is available
	          axi_bvalid <= 1'b1;
	          axi_bresp  <= 2'b0; // 'OKAY' response
	        end                   // work error responses in future
	      else
	        begin
	          if (S_AXI_BREADY && axi_bvalid)
	            //check if bready is asserted while bvalid is high)
	            //(there is a possibility that bready is always asserted high)
	            begin
	              axi_bvalid <= 1'b0;
	            end
	        end
	    end
	end

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is
	// de-asserted when reset (active low) is asserted.
	// The read address is also latched when S_AXI_ARVALID is
	// asserted. axi_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_arready <= 1'b0;
	      axi_araddr  <= 7'b0;
	    end
	  else
	    begin
	      if (~axi_arready && S_AXI_ARVALID)
	        begin
	          // indicates that the slave has acceped the valid read address
	          axi_arready <= 1'b1;
	          // Read address latching
	          axi_araddr  <= S_AXI_ARADDR;
	        end
	      else
	        begin
	          axi_arready <= 1'b0;
	        end
	    end
	end

	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers
	// data are available on the axi_rdata bus at this instance. The
	// assertion of axi_rvalid marks the validity of read data on the
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid
	// is deasserted on reset (active low). axi_rresp and axi_rdata are
	// cleared to zero on reset (active low).
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rvalid <= 0;
	      axi_rresp  <= 0;
	    end
	  else
	    begin
	      if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axi_rvalid <= 1'b1;
	          axi_rresp  <= 2'b0; // 'OKAY' response
	        end
	      else if (axi_rvalid && S_AXI_RREADY)
	        begin
	          // Read data is accepted by the master
	          axi_rvalid <= 1'b0;
	        end
	    end
	end

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;
	always @(*)
	begin
	      reg_data_out = 0;
	      // Address decoding for reading registers
	      case ( axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        5'h00   : reg_data_out = slv_reg0;
	        5'h01   : reg_data_out = slv_reg1;
	        5'h02   : reg_data_out = slv_reg2;
	        5'h03   : reg_data_out = slv_reg3;
	        5'h04   : reg_data_out = slv_reg4;
	        5'h05   : reg_data_out = slv_reg5;
	        5'h06   : reg_data_out = slv_reg6;
	        5'h07   : reg_data_out = slv_reg7;
	        5'h08   : reg_data_out = slv_reg8;
	        5'h09   : reg_data_out = slv_reg9;
	        5'h0A   : reg_data_out = slv_reg10;
	        5'h0B   : reg_data_out = slv_reg11;
	        5'h0C   : reg_data_out = slv_reg12;
	        5'h0D   : reg_data_out = slv_reg13;
	        5'h0E   : reg_data_out = slv_reg14;
	        5'h0F   : reg_data_out = slv_reg15;
	        5'h10   : reg_data_out = slv_reg16;
	        5'h11   : reg_data_out = slv_reg17;
	        5'h12   : reg_data_out = slv_reg18;
	        5'h13   : reg_data_out = slv_reg19;
	        5'h14   : reg_data_out = slv_reg20;
	        5'h15   : reg_data_out = slv_reg21;
	        5'h16   : reg_data_out = slv_reg22;
	        5'h17   : reg_data_out = slv_reg23;
	        5'h18   : reg_data_out = slv_reg24;
	        5'h19   : reg_data_out = slv_reg25;
	        5'h1A   : reg_data_out = slv_reg26;
	        5'h1B   : reg_data_out = slv_reg27;
	        5'h1C   : reg_data_out = slv_reg28;
	        5'h1D   : reg_data_out = slv_reg29;
	        5'h1E   : reg_data_out = slv_reg30;
	        5'h1F   : reg_data_out = slv_reg31;
	        default : reg_data_out = 0;
	      endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_rdata  <= 0;
	    end
	  else
	    begin
	      // When there is a valid read address (S_AXI_ARVALID) with
	      // acceptance of read address by the slave (axi_arready),
	      // output the read data
	      if (slv_reg_rden)
	        begin
	          axi_rdata <= reg_data_out;     // register read data
	        end
	    end
	end

	// Add user logic here

	// User logic ends
	//
////////////////////////////////////////////////////////////////////////////////
//
// Formal Verification section begins here.
//
// The following code was not part of the original Xilinx demo.
//
////////////////////////////////////////////////////////////////////////////////
`ifdef	FORMAL

reg [31:0] counter;
reg f_past_valid;
logic  [31:0] tb_awaddr;
logic  [31:0] tb_araddr;
initial f_past_valid =0;
reg [31:0] sv_reg[32];
reg [31:0] past_masked_wdata;

wire [31:0] masked_wdata = {
                    (S_AXI_WDATA[31:24] & {8{S_AXI_WSTRB[3]}}), 
                    (S_AXI_WDATA[23:16] & {8{S_AXI_WSTRB[2]}}), 
                    (S_AXI_WDATA[15:8]  & {8{S_AXI_WSTRB[1]}}), 
                    (S_AXI_WDATA[7:0]   & {8{S_AXI_WSTRB[0]}}) 
                    };



`define sv_regd(N)\
      { (sv_reg[N][31:24] & {8{!S_AXI_WSTRB[3]}}),   (sv_reg[N][23:16] & {8{!S_AXI_WSTRB[2]}}),    (sv_reg[N][15:8]  & {8{!S_AXI_WSTRB[1]}}),   (sv_reg[N][7:0]   & {8{!S_AXI_WSTRB[0]}})  }


assign tb_awaddr = axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] ;
assign tb_araddr = axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] ;


always @(posedge S_AXI_ACLK ) begin
	if(!S_AXI_ARESETN) begin 
		for(int i=0;i<=31;i++)
		sv_reg[i] <= 'b0;
	end else if(slv_reg_wren) begin 
              case((axi_awaddr[6:2]))
              5'h00: sv_reg[0]  <=   `sv_regd(0)  |  masked_wdata;
              5'h01: sv_reg[1]  <=   `sv_regd(1)  |  masked_wdata;
              5'h02: sv_reg[2]  <=   `sv_regd(2)  |  masked_wdata;
              5'h03: sv_reg[3]  <=   `sv_regd(3)  |  masked_wdata;
              5'h04: sv_reg[4]  <=   `sv_regd(4)  |  masked_wdata;
              5'h05: sv_reg[5]  <=   `sv_regd(5)  |  masked_wdata;
              5'h06: sv_reg[6]  <=   `sv_regd(6)  |  masked_wdata;
              5'h07: sv_reg[7]  <=   `sv_regd(7)  |  masked_wdata;
              5'h08: sv_reg[8]  <=   `sv_regd(8)  |  masked_wdata;
              5'h09: sv_reg[9]  <=   `sv_regd(9)  |  masked_wdata;
              5'h0A: sv_reg[10] <=   `sv_regd(10) |  masked_wdata;
              5'h0B: sv_reg[11] <=   `sv_regd(11) |  masked_wdata;
              5'h0C: sv_reg[12] <=   `sv_regd(12) |  masked_wdata;
              5'h0D: sv_reg[13] <=   `sv_regd(13) |  masked_wdata;
              5'h0E: sv_reg[14] <=   `sv_regd(14) |  masked_wdata;
              5'h0F: sv_reg[15] <=   `sv_regd(15) |  masked_wdata;
              5'h10: sv_reg[16] <=   `sv_regd(16) |  masked_wdata;
              5'h11: sv_reg[17] <=   `sv_regd(17) |  masked_wdata;
              5'h12: sv_reg[18] <=   `sv_regd(18) |  masked_wdata;
              5'h13: sv_reg[19] <=   `sv_regd(19) |  masked_wdata;
              5'h14: sv_reg[20] <=   `sv_regd(20) |  masked_wdata;
              5'h15: sv_reg[21] <=   `sv_regd(21) |  masked_wdata;
              5'h16: sv_reg[22] <=   `sv_regd(22) |  masked_wdata;
              5'h17: sv_reg[23] <=   `sv_regd(23) |  masked_wdata;
              5'h18: sv_reg[24] <=   `sv_regd(24) |  masked_wdata;
              5'h19: sv_reg[25] <=   `sv_regd(25) |  masked_wdata;
              5'h1A: sv_reg[26] <=   `sv_regd(26) |  masked_wdata;
              5'h1B: sv_reg[27] <=   `sv_regd(27) |  masked_wdata;
              5'h1C: sv_reg[28] <=   `sv_regd(28) |  masked_wdata;
              5'h1D: sv_reg[29] <=   `sv_regd(29) |  masked_wdata;
              5'h1E: sv_reg[30] <=   `sv_regd(30) |  masked_wdata;
              5'h1F: sv_reg[31] <=   `sv_regd(31) |  masked_wdata;
              default : assert(0);
              endcase
         end 
              
    end 

initial assume( !S_AXI_ARESETN);
initial past_masked_wdata =0;
always @(posedge S_AXI_ACLK)
if(1'b1) begin  
	f_past_valid <= 1'b1;
     	if(slv_reg_wren && S_AXI_ARESETN)
	past_masked_wdata <= masked_wdata;
end 

always @(posedge S_AXI_ACLK)
if(f_past_valid) begin 
//;//assume(S_AXI_WSTRB == 4'b1010);
     assume(S_AXI_ARESETN==1);
     assume(S_AXI_WDATA != 0);
 //if (S_AXI_AWVALID && S_AXI_ARVALID) 
//	assume(axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] > 29);
//  assume(S_AXI_AWADDR != S_AXI_ARADDR);
//counter <= counter + 1'b1; 

end 

always @(posedge S_AXI_ACLK) begin 

if(f_past_valid && S_AXI_ARESETN && $past(S_AXI_ARESETN)) begin 

    if( $past(S_AXI_AWVALID) && $past(!S_AXI_AWREADY)  )  begin  // AWchannel
   	 assume($stable(S_AXI_AWVALID));
   	 assume($stable(S_AXI_AWADDR));     
   	 assume($stable(S_AXI_AWPROT));
    end    
    
    if($past(S_AXI_WVALID) && $past(!S_AXI_WREADY) ) begin //Wchannel
   	 assume($stable(S_AXI_WVALID));
   	 assume($stable(S_AXI_WDATA));
   	 assume($stable(S_AXI_WSTRB));
    end
    
    if($past(!S_AXI_BREADY) && $past(S_AXI_BVALID) ) begin //Bchannel
  	  a_b1:assert($stable(S_AXI_BVALID));
  	  a_b2:assert($stable(S_AXI_BRESP));
    end
    
    if($past(S_AXI_ARVALID) && $past(!S_AXI_ARREADY) ) begin //ARchannel
	    assume($stable(S_AXI_ARVALID));
	    assume($stable(S_AXI_ARPROT));
	    assume($stable(S_AXI_ARADDR));
    end
    
if($past(!S_AXI_RREADY) && $past(S_AXI_RVALID) ) begin //Rchannel
        a_r1:assert($stable(S_AXI_RVALID));
        a_r2:assert($stable(S_AXI_RRESP));
        a_r3:assert($stable(S_AXI_RDATA));
    end
end 
end 





`define REG_ASSERT(N)\
    if ( ($past(slv_reg_wren)==1'b1) && ($past(axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB]) == 5'd``N``) ) \
    		a_reg``N``_data:    assert(slv_reg``N`` == (sv_reg[N]  )   ); 

  `define COVER_REG_ASSERT(N)\
    if ( ($past(slv_reg_wren)==1'b1) && ($past(axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB]) == 5'd``N``) ) \
    		c_reg``N``_data:    cover(slv_reg``N`` == (sv_reg[N]  )   ); 

  	
`define DOUT_ASSERT(N)\
    if ( ($past(slv_reg_rden)==1'b1) && ($past(axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB]) == 5'd``N``) ) \
	    if(S_AXI_RVALID && S_AXI_RREADY )    \
    		a_dout``N``_data:    assert(S_AXI_RDATA == $past(sv_reg[N] )   );  
    		//a_dout``N``_data:    assert(S_AXI_RDATA == $past(sv_reg[N]  )   ); 

    	


    
  //data =   { (S_AXI_WDATA[31:24] & 4{S_AXI_WSTRB[3]}  ) , (S_AXI_WDATA[16:23]  & 4{S_AXI_WSTRB[3]}  ), (S_AXI_WDATA[8:15]  & 4{S_AXI_WSTRB[3]} ) , ( S_AXI_WDATA[7:0] & 4{S_AXI_WSTRB[3]}  ) }     

always @(posedge S_AXI_ACLK)
if( f_past_valid && $past(S_AXI_ARESETN)==0) begin
    assert(axi_rdata==0);
    assert(!S_AXI_AWREADY); 
    assert(!S_AXI_WREADY); 
    assert(!S_AXI_BVALID) ;
    assert(!S_AXI_ARREADY) ;
    assert(!S_AXI_RVALID) ;

end 


always @(posedge S_AXI_ACLK)
 if(f_past_valid && ($past(S_AXI_ARESETN)==1) && S_AXI_ARESETN ) begin
       
   if ($past(S_AXI_AWVALID && S_AXI_AWREADY)) begin
    cover ($changed(S_AXI_AWADDR));
    cover ($changed(S_AXI_AWPROT));
    cover ($changed(S_AXI_AWREADY));
end 

   if($past(S_AXI_WVALID && S_AXI_WREADY)) begin
    cover ($changed(S_AXI_WSTRB));
    cover ($changed(S_AXI_WDATA));
    cover ($changed(S_AXI_WREADY));
end 
   if ($past(S_AXI_ARVALID && S_AXI_ARREADY)) begin
   cover ((S_AXI_ARADDR) != 0 );
   cover ($changed(S_AXI_ARPROT));
   cover ($changed(S_AXI_ARREADY));
end 

   if (( S_AXI_RVALID && S_AXI_RREADY )) begin
      cover($changed(S_AXI_RDATA));
      cover($changed(S_AXI_RDATA));
      cover($changed(S_AXI_RREADY));
end 

cover(S_AXI_RDATA !=0);
   cover(S_AXI_WSTRB== 4'b0000);
   cover(S_AXI_WSTRB== 4'b0110);
   cover(S_AXI_WSTRB== 4'b1010);
   cover(S_AXI_WSTRB== 4'b1111);

end


always @(posedge S_AXI_ACLK)
 if(f_past_valid && ($past(S_AXI_ARESETN)==1)) begin 

//	if ( ($past(slv_reg_wren)==1)  && ($past(axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB]) == 5'd31)  && ($past(S_AXI_WSTRB) == 4'b1111)  )
  //  		a_reg0_data:    assert(slv_reg31 == $past(S_AXI_WDATA) ) ;
       
             `REG_ASSERT(0)  `REG_ASSERT(1)  `REG_ASSERT(2)   `REG_ASSERT(3)   `REG_ASSERT(4)  `REG_ASSERT(5)
             `REG_ASSERT(6)  `REG_ASSERT(7)  `REG_ASSERT(8)   `REG_ASSERT(9)   `REG_ASSERT(10)  `REG_ASSERT(11)
             `REG_ASSERT(12)  `REG_ASSERT(13)  `REG_ASSERT(14)   `REG_ASSERT(15)   `REG_ASSERT(16)  `REG_ASSERT(17)
             `REG_ASSERT(18)  `REG_ASSERT(19)  `REG_ASSERT(20)   `REG_ASSERT(21)   `REG_ASSERT(22)  `REG_ASSERT(23)
             `REG_ASSERT(24)  `REG_ASSERT(25)  `REG_ASSERT(26)   `REG_ASSERT(28)   `REG_ASSERT(29)  `REG_ASSERT(30)
             `REG_ASSERT(31)     `COVER_REG_ASSERT(31) 
//	if ( ($past(slv_reg_wren)==1)  && ($past(axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB]) == 5'b0)  && ($past(S_AXI_WSTRB) == 4'b1111)  )

if($past(S_AXI_BVALID) && $past(S_AXI_BREADY) ) // when Handshake happens on Bchannel , the next cycle Bvalid should not stuck high 
a_no_multiple_bvalid: assert(!S_AXI_BVALID);

if($past(S_AXI_AWVALID) && $past(S_AXI_AWREADY) ) //  when Handshake happens on AWchannel , the next cycle AWready should not stuck high
a_no_multiple_awready: assert(!S_AXI_AWREADY);

if($past(S_AXI_WVALID) && $past(S_AXI_WREADY) )    // when Handshake happens on Wchannel , the next cycle Wchannel should not stuck high
a_no_multiple_wready: assert(!S_AXI_WREADY);



//No response before AW and W handshake

if( !($past(S_AXI_AWVALID && S_AXI_AWREADY))  && !($past(S_AXI_WVALID && S_AXI_WREADY))   &&  $past(!S_AXI_BVALID) ) // 
a_bvalid: assert(!S_AXI_BVALID);



end //if
reg write_in_progress;
initial write_in_progress=0;
//initial S_AXI_BREADY ='b0;
//always @(posedge S_AXI_ACLK) begin
//if(!S_AXI_ARESETN  ) write_in_progress <= 0;
// if ( (S_AXI_AWVALID) && (S_AXI_AWREADY) && S_AXI_ARESETN ) write_in_progress <= 1'b1;
// if((S_AXI_BVALID) && (S_AXI_BREADY) && S_AXI_ARESETN ) write_in_progress <= 1'b0;
//
//
////end 
////always @(*) begin 
//if($past(write_in_progress ) && S_AXI_ARESETN  )  
//a_write_outstanding:  assert( !(S_AXI_AWVALID && S_AXI_AWREADY) );
//
//end 

//reg write_in_progress;

always @(posedge S_AXI_ACLK) begin
    if (!S_AXI_ARESETN)
        write_in_progress <= 0;
    else begin
        case ({  (S_AXI_AWVALID && S_AXI_AWREADY), (S_AXI_BVALID  && S_AXI_BREADY)  })
        2'b10: write_in_progress <= 1; // start
        2'b01: write_in_progress <= 0; // end
        2'b11: write_in_progress <= 1; // end and  new start
        default: ;
        endcase
    end

    if (S_AXI_ARESETN && $past(write_in_progress) &&   (!(S_AXI_BVALID  && S_AXI_BREADY )) ) begin
     a_outstanding_wr_tx:  assert(!(S_AXI_AWVALID && S_AXI_AWREADY));
    end
end

reg read_in_progress;
initial read_in_progress =0;

always @(posedge S_AXI_ACLK ) begin 
if(!S_AXI_ARESETN)
	read_in_progress <= 0;
else begin 
	case( { (S_AXI_ARVALID && S_AXI_ARREADY) , (S_AXI_RVALID && S_AXI_RREADY)    }) 
        2'b10: read_in_progress <= 1;
	2'b01: read_in_progress <= 0;
	2'b11: read_in_progress <= 1;
	default : ;
	endcase
end 
if(S_AXI_ARESETN && $past(read_in_progress) &&   (!(S_AXI_RVALID && S_AXI_RREADY)) ) 
	a_outstanding_rd_tx : assert( !( S_AXI_RVALID && S_AXI_RREADY)  );

end 




always @(posedge S_AXI_ACLK)
 if(f_past_valid &&  ($past(S_AXI_ARESETN)==1)) begin 
 
             `DOUT_ASSERT(0)   `DOUT_ASSERT(1)  `DOUT_ASSERT(2)   `DOUT_ASSERT(3)   `DOUT_ASSERT(4)  `DOUT_ASSERT(5)
             `DOUT_ASSERT(6)   `DOUT_ASSERT(7)  `DOUT_ASSERT(8)   `DOUT_ASSERT(9)   `DOUT_ASSERT(10)  `DOUT_ASSERT(11)
             `DOUT_ASSERT(12)  `DOUT_ASSERT(13)  `DOUT_ASSERT(14)   `DOUT_ASSERT(15)   `DOUT_ASSERT(16)  `DOUT_ASSERT(17)
             `DOUT_ASSERT(18)  `DOUT_ASSERT(19)  `DOUT_ASSERT(20)   `DOUT_ASSERT(21)   `DOUT_ASSERT(22)  `DOUT_ASSERT(23)
             `DOUT_ASSERT(24)  `DOUT_ASSERT(25)  `DOUT_ASSERT(26)   `DOUT_ASSERT(28)   `DOUT_ASSERT(29)  `DOUT_ASSERT(30)
             `DOUT_ASSERT(31) 

  if($past(S_AXI_ARVALID) && $past(S_AXI_ARREADY) ) //when Handshake happens on ARchannel , the next cycle ARready should not stuck high 
	  a_no_multiple_arready: assert(!S_AXI_ARREADY);
  
  if($past(S_AXI_RVALID) && $past(S_AXI_RREADY) )   //when Handshake happens on Rchannel , the next cycle Rvalid should not stuck high 
  	a_no_multiple_rready: assert(!S_AXI_RVALID);
  

end



`endif
endmodule
