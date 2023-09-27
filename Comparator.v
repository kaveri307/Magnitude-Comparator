module comparator(A,B,equal,less,greater);

input [3:0] A,B;

output reg equal,less,greater;

always @(A,B)
begin
 if (A==B)
 begin
  equal = 1'b1;
  less = 1'b0;
  greater = 1'b0;
 end
 else if (A>B)
 begin
  equal = 1'b0;
  less = 1'b0;
  greater = 1'b1;
 end
 else
 begin
  equal = 1'b0;
  less = 1'b1;
  greater = 1'b0;
 end
end 
endmodule