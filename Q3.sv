//design

module mux(o,x1,x2,s);
  input x1,x2,s;
  output o;
  
  assign o=(~s&&x1)||(s&&x2);
  
endmodule


module mux8(o,i,s);
  input [7:0]i;
  input [2:0]s;
  output o;
  
  wire a,b,c,d,e,f;
  reg x;
  mux z(a,i0,i1,s[0]);
  mux y(b,i2,i3,s[0]);
  mux x7(c,i4,i5,s[0]);
  mux w(d,i6,i7,s[0]);
  mux v(e,a,b,s[1]);
  mux u(f,c,d,s[1]);
  mux t(x,e,f,s[2]);
  
  assign o=x;
endmodule


module muxtest;
  reg [7:0]i;
  wire o;
  reg [2:0]s;
   mux8 a(o,i,s);
  initial
    begin 
      #2 s[0]= 1'b0;
      #2 s[1]=1'b1;
      #2 s[2] = 1'b0;
      
      i=8'b01100011;
     
      #1 $display("%b",o);
      
    end
endmodule
  
  

    
  
