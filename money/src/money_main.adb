with Ada.Text_IO;
with Money;

procedure Money_Main is
   My_Dollar : Money.Object := Money.Dollar (1);
   My_Franc  : Money.Object := Money.Franc (2);
begin

   Ada.Text_IO.Put_Line ("Money_Main");

end Money_Main;
