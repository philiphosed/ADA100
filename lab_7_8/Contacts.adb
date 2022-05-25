with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

with GNAT.Calendar.Time_IO;

package body Contacts is

   function Make_Address(Street : in String;
                         City : in String;
                         State : in String;
                         Zip : in String) return Address_Type is Address : Address_Type;

   begin

      Address.Street : = To_Unbounded_String(Street);
      Address.City : = To_Unbounded_String(City);
      Address.State : = To_Unbounded_String(State);
      Address.Zip : = To_Unbounded_String(Zip);
      return Address;

   end Make_Address;

   procedure Put(Address : in Address_Type) is

   begin
  
      Put_Line(To_String(Address.Street));
      Put_Line(To_String(Address.City));
      Put_Line(To_String(Address.State));
      Put_Line(To_String(Address.Zip));


   end;

   function Make_Contact(Name : in String;
                         Address : in Address_Type;
                         Birthday : in Time) return Contact_Type is Contact : Contact_Type;

   begin

      Contact.Name : = To_Unbounded_String(Name);
      Contact.Address : = Address;
      Contact.Birthday : = Birthday;
      return Address;

   end Make_Contact;


   procedure Put(Contact : in Contact_Type) is

   begin
  
      Put_Line(To_String(Contact.Name));
      Put(Contact.Address);
      Put(Year(Contact.Birthday));
      Put(Month(Contact.Birthday));
      Put(Day(Contact.Birthday));

      New_Line;

   end Put;


   procedure Add_Contact(Contacts : in out Contact_Book; Contact : in Contact_Type) is

   begin

      Contacts.Contacts(Contacts.Num_Contacts + 1) := Contact;

      Contacts.Num_Contacts := Contacts.Num_Contacts + 1;


   end Add_Contact;


  function Get_Contact_Count(Contacts : in Contact_Book) return Integer is

  begin
 
     return Contacts.Num_Contacts;

  end;


  function Get_Contacts(Contacts: in Contact_Book; Num : in Integer) retturn Contact_Type is

  begin
     
    return Contacts.Contacts(Num);

  end

