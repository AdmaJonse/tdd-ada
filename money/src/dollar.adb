with Ada.Strings.Fixed;

package body Dollar is

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
   function Equals 
     (Left  : in Object;
      Right : in Object)
      return Boolean is 
     (Left.Amount = Right.Amount);
   
   -----------------------------------------------------------------------------
   --
   function Times 
     (This       : in Object;
      Multiplier : in Object)
      return Object is
      (Object'(Amount => This.Amount * Multiplier.Amount));
   
   -----------------------------------------------------------------------------
   --
   function Times 
     (This       : in Object;
      Multiplier : in Integer)
      return Object is 
     (Object'(Amount => This.Amount * Multiplier));

end Dollar;
