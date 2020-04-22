// Code your design here
//3:8 priority decoder
//behavioural code

module encoder_8_3(o,a1,a2,a3,a4,a5,a6,a7,a8);
  input a1,a2,a3,a4,a5,a6,a7,a8;
  output [2:0]o;
  reg [2:0]r;
  assign o=(a8?(3'b111):(a7?(3'b110):(a6?(3'b101):(a5?(3'b100):(a4?(3'b011):(a3?(3'b010):(a2?(3'b001):a1?(3'b000):(r))))))));
endmodule




//test
module encotest;
  wire [2:0]o;
  reg a1,a2,a3,a4,a7,a6,a5,a8;
  
  
  encoder_8_3 s1(o,a1,a2,a3,a4,a5,a6,a7,a8);
  initial
    begin
      
      #5
      a8=1'b0; a7=1'b1; a6=1'b0; a5=1'b1; a4=1'b0;
      a3=1'b0; a2=1'b0; a1=1'b0;
      #5 $display("%b",o);
      
      
      a8=1'b1; a7=1'b1; a6=1'b1; a5=1'b1; a4=1'b0;
      a3=1'b0; a2=1'b0; a1=1'b1;
      #5 $display("%b",o);     
    end
endmodule



