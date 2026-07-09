reg clk;
reg reset;
wire [2:0] out;

traffic_light uut (
    .clk(clk),
    .reset(reset),
    .out(out)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;     // Apply reset
    #20;
    reset = 0;     // Release reset
    #100;
    $finish;
end
