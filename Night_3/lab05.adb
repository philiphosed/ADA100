with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure lab05 is
   
   type Season_Type is (Winter, Spring, Summer, Fall);

   function Next_Season(Season : in Season_Type) return Season_Type is

   begin

      if Season = Fall then 
         return Winter;

      else
         return Season_Type`Succ(Season);
 
      end if;

   end;

   function Last_Season(Season : in Season_Type) return Season_Type is

   begin

      if Season = Winter then 
         return Fall;

      else
         return Season_Type`Pred(Season);
 
      end if;

   end;


   procedure Get(Season : out Season_Type) is

      In_Val : String (1..80);
      Last : Natural;

   begin
      
      Get_Line(In_Val,Last);
      Season := Season_Type`Value(In_Val(1..Last));

   end;

   procedure Put(Season : out Season_Type) is

   begin
      
      Put(Season_Type`Image(Season));

   end;
   

   User_Input_Season : Season_Type;

      
begin


     Put_Line("Enter a season (Winter, Spring, Summer, Fall): ");

     Get(User_Input_Season);

     Put("Previous Season:");

     Put(Last_Season(User_Input_Season);

     Ada.Text_IO.New_Line;

     Put("Next Season:");

     Put(Next_Season(User_Input_Season);

     Ada.Text_IO.New_Line;


  



end;