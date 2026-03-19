module labtest_q1_hardware(a,b,x,y,z);
    input a,b;
    output reg x,y,z;
    
    wire[1:0] temp; //this is an optional wire you may/may not wish to use
    
    // complete the rest of the code
    assign temp = {a, b};
     
    always @(temp) begin
        case (temp)
            2'b00       : begin x = 1'b0; y = 1'b0; z = 1'b1; end 
            2'b01       : begin x = 1'b0; y = 1'b0; z = 1'b0; end 
            2'b10       : begin x = 1'b0; y = 1'b1; z = 1'b1; end 
            default     : begin x = 1'b1; y = 1'b0; z = 1'b0; end 
        endcase
    end

endmodule

