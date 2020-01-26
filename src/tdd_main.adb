with Ada.Text_IO;
with Rectangle;

procedure Tdd_Main is
begin

  Ada.Text_IO.Put_Line ("TDD Main");

  declare
    Rect : Rectangle.Object := Rectangle.Make (Length => 8, Width => 10);
  begin
    Ada.Text_IO.Put_Line (Rect.Image);
    Ada.Text_IO.Put_Line ("Area: " & Rect.Area'Img);
    Ada.Text_IO.Put_Line ("Perimeter: " & Rect.Perimeter'Img);
  end;

end Tdd_Main;
