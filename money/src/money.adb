with Ada.Strings.Fixed;
with Ada.Tags;

package body Money is

   -----------------------------------------------------------------------------
   --
   function Make
     (Amount : in Integer)
      return Object is
     (Make (Amount, None));

   -----------------------------------------------------------------------------
   --
   function Make
     (Amount   : in Integer;
      Currency : in Currency_Type)
      return Object is
     (Object'(Amount, Currency));

   -----------------------------------------------------------------------------
   --
   function Franc
     (Amount   : in Integer)
      return Object is
     (Make (Amount, CHF));

   -----------------------------------------------------------------------------
   --
   function Dollar
     (Amount   : in Integer)
      return Object is
     (Make (Amount, USD));

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
     (Left.Amount = Right.Amount and
      Left.Get_Currency = Right.Get_Currency);

   -----------------------------------------------------------------------------
   --
   function "+"
     (Left  : in Object;
      Right : in Object)
      return Object is
     (Make (Amount   => Left.Amount + Right.Amount,
            Currency => Left.Currency));

   -----------------------------------------------------------------------------
   --
   function "+"
     (Left  : in Object;
      Right : in Integer)
      return Object is
     (Make (Amount   => Left.Amount + Right,
            Currency => Left.Currency));

   -----------------------------------------------------------------------------
   --
   function "*"
     (Left  : in Object;
      Right : in Object)
      return Object is
     (Make (Amount   => Left.Amount * Right.Amount,
            Currency => Left.Currency));

   -----------------------------------------------------------------------------
   --
   function "*"
     (Left  : in Object;
      Right : in Integer)
      return Object is
     (Make (Amount   => Left.Amount * Right,
            Currency => Left.Currency));

   -----------------------------------------------------------------------------
   --
   function Get_Currency
     (This : in Object)
      return Currency_Type is
     (This.Currency);

end Money;
