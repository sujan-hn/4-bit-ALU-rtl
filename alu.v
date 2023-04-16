module alu_4bit( input[2:0]alu_code,input[3:0]a,input[3:0]b,output reg[7:0]result,output reg flag_c =1'b0  );    




parameter  [2:0] add = 3'b000,

                 sub = 3'b001,

                 mul = 3'b010,

                 and2 = 3'b011,

                 or2 = 3'b100,

                 nand2 = 3'b101,

                 nor2 = 3'b110,

                 xor2 = 3'b111;      

always @ (*)

begin

 case (alu_code)

 add: begin

   result = a+b;

   flag_c  = result[5];


  end

 sub: begin

   result = a - b;

   flag_c  = result[5];

 

  end

 mul: begin

   result = a * b;

   

  end

 and2: begin

   result = a & b;


  end

 or2:  begin

    result = a | b;

    

   end

 nand2: begin

   result = ~(a & b);

 

  end

nor2 : begin

   result = ~(a | b);

   
  end

 xor2: begin

   result = a ^ b;

 
  end

 default: begin

   result = 8'b0;

   flag_c  = 1'b0;

   

  end

 endcase

end

endmodule
