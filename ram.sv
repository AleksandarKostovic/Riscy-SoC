module sp_ram (
  input [5:0] addr,
  input [7:0] data,
  input we,clk,
  output [7:0] q
);
  reg [5:0] addr_reg;
  reg [7:0] ram [63:0];
  always @ (posedge clk)
  begin  
    if (we)
      ram[addr] <= data;
      addr_reg <= addr;
  end
  
  assign q = ram[addr_reg];
endmodule   
