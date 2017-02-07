module top(input clk, output D1, output D2, output D3, output D4, output D5);
   
   reg ready = 0;
   reg [23:0]     divider;
   reg [3:0]      rot;
   
   always @(posedge clk) begin
      if (ready) 
        begin
           if (divider == 12000000) 
             begin
                divider <= 0;
                rot <= rot + 1;

		if (rot < 4'b0100)
                 begin
                   flow <= 1;
                 end
                 else
                  begin
                   flow <= 0;
		 end // rot
             end
           else 
             divider <= divider + 1;
        end
      else 
        begin
           ready <= 1;
           flow <= 0;
           rot <= 4'b1111;
           divider <= 0;
        end
   end
   
   assign D1 = rot[0];
   assign D2 = rot[1];
   assign D3 = rot[2];
   assign D4 = rot[3];
   assign D5 = flow;
endmodule // top
