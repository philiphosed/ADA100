with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure lab02_03 is
   int1, int2, int3 : Integer;

   procedure doSum (int1 : in Integer; int2 : in Integer; int3 : out Integer) is

   begin

      int3 := int1 + int2;

   end;


begin

   Ada.Text_IO.Put_Line("Enter First Int:");

   Ada.Integer_IO.Get(int1);

   Ada.Text_IO.Put_Line("Enter Second Int:");

   Ada.Integer_IO.Get(int2);

   doSum(int1,int2,int3);

   Ada.Text_IO.Put("Sum of First and Second Ints");

   Ada.Integer_IO.Put(int3);

end;