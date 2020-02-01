package body Rectangle is

   ------------------------------------------------------------------------------
   --
   function Make
     (Length : in Float;
      Width  : in Float)
      return Object is
     (Object'(Length => Length,
              Width  => Width));

   ------------------------------------------------------------------------------
   --
   function Image
     (This : in Object)
      return String is
     ("Rectangle - length: " & This.Length'Img & ", width: " & This.Width'Img);

   ------------------------------------------------------------------------------
   --
   function Equals
     (Left  : in Object;
      Right : in Object)
      return Boolean is
     (Left.Length = Right.Length and Left.Width = Right.Width);

   ------------------------------------------------------------------------------
   --
   function Area
     (This : in Object)
      return Float is
     (This.Length * This.Width);

   ------------------------------------------------------------------------------
   --
   function Perimeter
     (This : in Object)
      return Float is
     (This.Length + This.Length + This.Width + This.Width);

end Rectangle;
