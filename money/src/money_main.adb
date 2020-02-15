with Ada.Text_IO;
with Dollar;
with Franc;

procedure Money_Main is
   My_Dollar : Dollar.Object := Dollar.Make (1);
   My_Franc  : Franc.Object  := Franc.Make (2);
begin

   Ada.Text_IO.Put_Line ("Money_Main");

end Money_Main;
