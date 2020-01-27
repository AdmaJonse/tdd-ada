with Ada.Numerics;
with Ada.Float_Text_IO;

package body Circle is

   ------------------------------------------------------------------------------
   --
   function Make
     (Radius : in Float)
      return Object is
     (Object'(Radius => Radius));

   ------------------------------------------------------------------------------
   --
   function Image
     (This : in Object)
      return String is
     ("Circle - radius: " & This.Radius'Img);

   ------------------------------------------------------------------------------
   --
   function Equals
     (Left  : in Object;
      Right : in Object)
      return Boolean is
     (Left.Radius = Right.Radius);

   ------------------------------------------------------------------------------
   --
   function Area
     (This : in Object)
      return Float is
     (Ada.Numerics.Pi * This.Radius ** 2);

   ------------------------------------------------------------------------------
   --
   function Perimeter
     (This : in Object)
      return Float is
     (2.0 * Ada.Numerics.Pi * This.Radius);

end Circle;

