with Ada.Strings.Unbounded;
use Ada.Strings.Unbounded;

package Contacts is

   type Address_Type is
      record
         Street : Unbounded_String;
         City   : Unbounded_String;
         State  : Unbounded_String;
         Zip    : Unbounded_String;
      end record;

   type Data_Type is
      record
         Day_Num   : Unbounded_String;
         Month_Num : Unbounded_String;
         Year_Num  : Unbounded_String;
      end record;

   type Contact_Type is
      record
         Name     : Unbounded_String;
         Address  : Address_Type;
         Birthday : Data_Type;
      end record;     

   type Contact_Book is array (1...100) of Contact_Type;

end Contacts;