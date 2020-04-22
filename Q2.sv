//Test bench
module decodertest;
  reg i0,i1,i2,i3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;
  
  deco s1(i0,i1,i2,i3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);
  initial
    begin
      #5 assign i0 = 1;
      #5 assign i1 = 1;
      #5 assign i2 = 1;
      #5 assign i3 = 0;
      #1 $display(y15,y14,y13,y12,y11,y10,y9,y8,y7,y6,y5,y4,y3,y2,y1,y0);
         
    end
endmodule




//design
module decoder(i0,i1,i2,i3,y0,y1,y2,y3,y4,y5,y6,y7);
  input i0,i1,i2,i3;
  output y0,y1,y2,y3,y4,y5,y6,y7;
  
  assign y0 = ~i3 && ~i2 && ~i1 && ~i0; assign y1 = ~i3 && ~i2 && ~i1 && i0; assign y2 = ~i3 && ~i2 && i1 && ~i0;assign y3 = ~i3 && ~i2 && i1 && i0;
assign y4 = ~i3 && i2 && ~i1 && ~i0; assign y5 = ~i3 && i2 && ~i1 && i0;
  assign y6 = ~i3 && i2 && i1 && ~i0;assign y7 = ~i3 && i2 && i1 && i0;
  
endmodule

module deco(i0,i1,i2,i3,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15);
  input i0,i1,i2,i3;
  output y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;
  
  dec8 d1(i0,i1,i2,i3,y0,y1,y2,y3,y4,y5,y6,y7);
  dec8 d2(i0,i1,i2,~i3,y8,y9,y10,y11,y12,y13,y14,y15);
endmodule
