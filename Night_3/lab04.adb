with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure lab04 is
   Large_INT, Dec_INT : Integer;

   procedure decNum (Large_INT : in Integer; Dec_INT : out Integer) is

      temp : Integer;

   begin

      Dec_INT := 0;

      temp := Large_INT;

      while temp > 10 loop

         temp := temp / 10;

         Dec_INT := Dec_INT + 1;

      end loop;

   end;


begin

   Ada.Text_IO.Put_Line("Enter Large Int:");

   Ada.Integer_Text_IO.Get(Large_INT);

   decNum(Large_INT,Dec_INT);

   Ada.Text_IO.Put_Line("Number of Large INT Decimals: ");

   Ada.Integer_Text_IO.Put(Dec_INT);

end;