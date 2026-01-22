reg clk,reset;
reg [1:0]ctrl;
reg [7:0]d;
reg [7:0]q;

univ_sr_dut(clk,reset,ctrl,d,q);

always #5 clk=~clk;

initial
begin
	clk=0; reset=0;
#10;
d=8'b11010011;
ctrl=2'b11; //load

#10;
ctrl=2'b01; //shift left

#10;
ctrl=2'b10; //shift right
d[7]=0;
end
endmodule


