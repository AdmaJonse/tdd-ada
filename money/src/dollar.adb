with Ada.Strings.Fixed;

package body Dollar is

   -----------------------------------------------------------------------------
   --
   function Make 
     (Amount : in Integer)
      return Object is
   begin
      return Object'(Amount => Amount);
   end Make;
   
   -----------------------------------------------------------------------------
   --
   function Image 
     (This : in Object)
      return String is
   begin
      return "$" & Ada.Strings.Fixed.Trim (This.Amount'Img, Ada.Strings.Both);
   end Image;
   
   -----------------------------------------------------------------------------
   --
   function Times 
     (This       : in Object;
      Multiplier : in Integer)
      return Object is
   begin
      return Object'(Amount => This.Amount * Multiplier);
   end Times;

end Dollar;
