// AstroTinker Bot : Task 2A : UART Receiver
/*
Instructions
-------------------
Students are not allowed to make any changes in the Module declaration.

This file is used to receive UART Rx data packet from receiver line and then update the rx_msg and rx_complete data lines.

Recommended Quartus Version : 20.1
The submitted project file must be 20.1 compatible as the evaluation will be done on Quartus Prime Lite 20.1.

Warning: The error due to compatibility will not be entertained.
-------------------
*/

/*
Module UART Receiver

Input:  clk_50M - 50 MHz clock
        rx      - UART Receiver

Output: rx_msg      - read incoming message
        rx_complete - message received flag
*/

// module declaration
module uart_rx (
  input clk_50M, rx,
  output reg [7:0] rx_msg,
  output reg rx_complete,
  output reg [1:0] state, output reg [7:0] data

);

//////////////////DO NOT MAKE ANY CHANGES ABOVE THIS LINE//////////////////

////////////////////////// Add your code here

parameter IDLE = 0, START = 1, DATA = 2, STOP = 3;

// reg [3:0] state = 0;
reg [8:0] count;
reg [3:0] bitcount;
// reg [7:0] data;

initial begin

rx_msg = 0; rx_complete = 0;
state = IDLE; count = 0; bitcount = 0; data = 0;

end

always @(posedge clk_50M) begin
        case (state)
                IDLE: begin
                        
                end
                START: begin
                
                end
                DATA:begin
                        
                end
                STOP:begin
                        
                end
        endcase
end


//////////////////DO NOT MAKE ANY CHANGES BELOW THIS LINE//////////////////

endmodule