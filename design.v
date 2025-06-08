module keypad_display(input clk,input [3:0] row,input [3:0] col, output reg [6:0] seg, output reg [3:0] an);
    reg [6:0] seg_map [0:15];
    initial begin
        seg_map[0] = 7'b0111111; // 0
        seg_map[1] = 7'b0000110; // 1
        seg_map[2] = 7'b1011011; // 2
        seg_map[3] = 7'b1001111; // 3
        seg_map[4] = 7'b1100110; // 4
        seg_map[5] = 7'b1101101; // 5
        seg_map[6] = 7'b1111101; // 6
        seg_map[7] = 7'b0000111; // 7
        seg_map[8] = 7'b1111111; // 8
        seg_map[9] = 7'b1101111; // 9
        seg_map[10] = 7'b1110111; // A
        seg_map[11] = 7'b1111100; // B
        seg_map[12] = 7'b0111001; // C
        seg_map[13] = 7'b1011110; // D
        seg_map[14] = 7'b1111001; // E
        seg_map[15] = 7'b1110001; // F
    end
    always @ (posedge clk) begin
        case (row)
            4'b1110: begin // First row active
                case (col)
                    4'b1110: seg <= seg_map[0];  // Key 0
                    4'b1101: seg <= seg_map[1];  // Key 1
                    4'b1011: seg <= seg_map[2];  // Key 2
                    4'b0111: seg <= seg_map[3];  // Key 3
                    default: seg <= 7'b0000000;
                endcase
            end
            4'b1101: begin // Second row active
                case (col)
                    4'b1110: seg <= seg_map[4];  // Key 4
                    4'b1101: seg <= seg_map[5];  // Key 5
                    4'b1011: seg <= seg_map[6];  // Key 6
                    4'b0111: seg <= seg_map[7];  // Key 7
                    default: seg <= 7'b0000000;
                endcase
            end
            4'b1011: begin // Third row active
                case (col)
                    4'b1110: seg <= seg_map[8];  // Key 8
                    4'b1101: seg <= seg_map[9];  // Key 9
                    4'b1011: seg <= seg_map[10]; // Key A
                    4'b0111: seg <= seg_map[11]; // Key B
                    default: seg <= 7'b0000000;
                endcase
            end
            4'b0111: begin // Fourth row active
                case (col)
                    4'b1110: seg <= seg_map[12]; // Key C
                    4'b1101: seg <= seg_map[13]; // Key D
                    4'b1011: seg <= seg_map[14]; // Key E
                    4'b0111: seg <= seg_map[15]; // Key F
                    default: seg <= 7'b0000000;
                endcase
            end
            default: seg <= 7'b0000000;
        endcase
    end
    always @ (posedge clk) begin
        an <= 4'b1110; 
    end
endmodule
