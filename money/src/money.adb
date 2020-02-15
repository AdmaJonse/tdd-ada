with Ada.Strings.Fixed;
with Ada.Tags;

package body Money is

   -----------------------------------------------------------------------------
   --
   function Make
     (Amount : in Integer)
      return Object is
     (Object'(Amount => Amount));

   -----------------------------------------------------------------------------
   --
   function Image
     (This : in Object)
      return String is
     ("$" & Ada.Strings.Fixed.Trim (This.Amount'Img, Ada.Strings.Both));

   -----------------------------------------------------------------------------
   --
   function "="
     (Left  : in Object;
      Right : in Object)
      return Boolean is
     (Left.Amount = Right.Amount);

   -----------------------------------------------------------------------------
   --
   function "*"
     (Left  : in Object;
      Right : in Object)
      return Object is
     (Object'(Amount => Left.Amount * Right.Amount));

   -----------------------------------------------------------------------------
   --
   function "*"
     (Left  : in Object;
      Right : in Integer)
      return Object is
     (Object'(Amount => Left.Amount * Right));

end Money;
