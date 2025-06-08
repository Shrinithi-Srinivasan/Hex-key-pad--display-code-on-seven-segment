module tb_keypad_display;
    reg clk;
    reg [3:0] row;
    reg [3:0] col;
    wire [6:0] seg;
    wire [3:0] an;
    keypad_display uut (
        .clk(clk),
        .row(row),
        .col(col),
        .seg(seg),
        .an(an)
    );
    always #5 clk = ~clk; 
    initial begin
        $dumpfile("dumpfile.vcd");
      	$dumpvars(1);
        clk = 0;
        row = 4'b1111;
        col = 4'b1111;
        $display("At time 0: row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);       
        row = 4'b1110; col = 4'b1110; #10;//Test Key 0: Press (row=1110, col=1110)
        $display("At time 10: Key Pressed: 0, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);
        row = 4'b1110; col = 4'b1101; #10; // Test Key 1: Press (row=1110, col=1101)
        $display("At time 20: Key Pressed: 1, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);        
        row = 4'b1110; col = 4'b1011; #10;// Test Key 2: Press (row=1110, col=1011)
        $display("At time 30: Key Pressed: 2, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);       
        row = 4'b1110; col = 4'b0111; #10; // Test Key 3: Press (row=1110, col=0111)
        $display("At time 40: Key Pressed: 3, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);       
        row = 4'b1101; col = 4'b1110; #10; // Test Key 4: Press (row=1101, col=1110)
        $display("At time 50: Key Pressed: 4, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);       
        row = 4'b1101; col = 4'b1101; #10; // Test Key 5: Press (row=1101, col=1101)
        $display("At time 60: Key Pressed: 5, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);       
        row = 4'b1101; col = 4'b1011; #10; // Test Key 6: Press (row=1101, col=1011)
        $display("At time 70: Key Pressed: 6, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);       
        row = 4'b1101; col = 4'b0111; #10; // Test Key 7: Press (row=1101, col=0111)
        $display("At time 80: Key Pressed: 7, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);       
        row = 4'b1011; col = 4'b1110; #10; // Test Key 8: Press (row=1011, col=1110)
        $display("At time 90: Key Pressed: 8, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);       
        row = 4'b1011; col = 4'b1101; #10; // Test Key 9: Press (row=1011, col=1101)
        $display("At time 100: Key Pressed: 9, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);      
        row = 4'b1011; col = 4'b1011; #10;  // Test Key A: Press (row=1011, col=1011)
        $display("At time 110: Key Pressed: A, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);      
        row = 4'b1011; col = 4'b0111; #10; // Test Key B: Press (row=1011, col=0111)
        $display("At time 120: Key Pressed: B, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);      
        row = 4'b0111; col = 4'b1110; #10; // Test Key C: Press (row=0111, col=1110)
        $display("At time 130: Key Pressed: C, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);      
        row = 4'b0111; col = 4'b1101; #10; // Test Key D: Press (row=0111, col=1101)
        $display("At time 140: Key Pressed: D, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);     
        row = 4'b0111; col = 4'b1011; #10;  // Test Key E: Press (row=0111, col=1011)
        $display("At time 150: Key Pressed: E, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);      
        row = 4'b0111; col = 4'b0111; #10;// Test Key F: Press (row=0111, col=0111)
        $display("At time 160: Key Pressed: F, row = %b, col = %b, seg = %b, an = %b", row, col, seg, an);
        $finish;
    end
endmodule
