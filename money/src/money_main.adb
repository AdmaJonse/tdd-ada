with Ada.Text_IO;
with Dollar;

procedure Money_Main is
   My_Dollar : Dollar.Object := Dollar.Make (1);
begin

   Ada.Text_IO.Put_Line ("Money_Main");

end Money_Main;
