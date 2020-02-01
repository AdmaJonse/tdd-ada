with Ada.Text_IO;
with Circle;
with Rectangle;
with Triangle;

procedure Shapes_Main is
begin

   declare

      Rect : Rectangle.Object := Rectangle.Make (Length => 8.0,
                                                 Width  => 10.0);

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

   declare

      Tri  : Triangle.Object := Triangle.Make (Side_One   => 2.0,
                                               Side_Two   => 2.0,
                                               Side_Three => 3.0);

   begin
      Ada.Text_IO.Put_Line (Tri.Image);
      Ada.Text_IO.Put_Line ("Area: " & Tri.Area'Img);
      Ada.Text_IO.Put_Line ("Perimeter: " & Tri.Perimeter'Img);
   end;

end Shapes_Main;
