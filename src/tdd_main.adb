with Ada.Text_IO;
with Circle;
with Rectangle;

procedure Tdd_Main is
begin

   Ada.Text_IO.Put_Line ("TDD Main");

   declare
      Rect : Rectangle.Object := Rectangle.Make (Length => 8.0, Width => 10.0);
   begin
      Ada.Text_IO.Put_Line (Rect.Image);
      Ada.Text_IO.Put_Line ("Area: " & Rect.Area'Img);
      Ada.Text_IO.Put_Line ("Perimeter: " & Rect.Perimeter'Img);
   end;

   declare
      Circ : Circle.Object := Circle.Make (Radius => 8.0);
   begin
      Ada.Text_IO.Put_Line (Circ.Image);
      Ada.Text_IO.Put_Line ("Area: " & Circ.Area'Img);
      Ada.Text_IO.Put_Line ("Perimeter: " & Circ.Perimeter'Img);
   end;

end Tdd_Main;
