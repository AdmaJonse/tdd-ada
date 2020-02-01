with Ada.Exceptions;
with Ada.Numerics.Generic_Elementary_Functions;

package body Triangle is

   package Elementary_Functions is new Ada.Numerics.Generic_Elementary_Functions (Float_Type => Float);

   Invalid_Triangle : Exception;

   ------------------------------------------------------------------------------
   --
   function Make
     (Side_One   : in Float;
      Side_Two   : in Float;
      Side_Three : in Float)
      return Object is

   begin

      if Side_One + Side_Two   <= Side_Three or
         Side_One + Side_Three <= Side_Two or
         Side_Two + Side_Three <= Side_One then

         raise Invalid_Triangle with "Invalid side lengths for Triangle.";

      end if;


      return Object'(Side_One   => Side_One,
                     Side_Two   => Side_Two,
                     Side_Three => Side_Three);

   end Make;


   ------------------------------------------------------------------------------
   --
   function Image
     (This : in Object)
      return String is
     ("Triangle - side one: " & This.Side_One'Img & ", side two: " & This.Side_Two'Img & ", side three: " & This.Side_Three'Img);

   ------------------------------------------------------------------------------
   --
   function Equals
     (Left  : in Object;
      Right : in Object)
      return Boolean is

   begin

      return
        Left.Side_One   = Right.Side_One and
        Left.Side_Two   = Right.Side_Two and
        Left.Side_Three = Right.Side_Three;

   end Equals;

   ------------------------------------------------------------------------------
   --
   function Area
     (This : in Object)
      return Float is

      S : constant Float := (This.Side_One + This.Side_Two + This.Side_Three) / 2.000;

   begin

      return Elementary_Functions.Sqrt (S * (S - This.Side_One) * (S - This.Side_Two) * (S - This.Side_Three));

   end Area;

   ------------------------------------------------------------------------------
   --
   function Perimeter
     (This : in Object)
      return Float is
     (This.Side_One + This.Side_Two + This.Side_Three);

end Triangle;
