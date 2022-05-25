with Ada.Text_IO, ;
with Ada.Strings.Unbounded;
with Contacts;

use Ada.Strings.Unbounded;

procedure testcontacts is

   Book : Contacts.Contacts_Book;

begin

   Book(1).Name := To_Unbouned_String("David");
   Book(1).Address.Street := To_Unbouned_String("Sesame Street");
   Book(1).Birthday.Year_Num := To_Unbouned_String("1995");

   Ada.Text_IO.Put_Line("Here is the info from the Contact Book: ");

   Ada.Text_IO.Put_Line(To_String(Book(1).Name);
   Ada.Text_IO.Put_Line(To_String(Book(1).Address.Street);
   Ada.Text_IO.Put_Line(To_String(Book(1).Birthday.Year_Num);



end;