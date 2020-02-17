with Money_Interface;
with Money_Types; use Money_Types;

package Money is

   type Object is new Money_Interface.Object with private;
   
   --  Constructor for the money object.
   --
   --  @param Amount    the value of the money object.
   --  @param Currency  the currency type of the money object.
   --
   --  @return  the money object
   --  
   function Make 
     (Amount : in Integer)
      return Object;
   
   --  Constructor for the money object.
   --
   --  @param Amount    the value of the money object.
   --  @param Currency  the currency type of the money object.
   --
   --  @return  the money object
   --  
   function Make 
     (Amount   : in Integer;
      Currency : in Currency_Type)
      return Object;
   
   --  Constructor for a franc object.
   --
   --  @param Amount  the value of the franc object.
   --
   --  @return  a franc object
   --
   function Franc 
     (Amount : in Integer)
      return Object;

   --  Constructor for a dollar object.
   --
   --  @param Amount  the value of the dollar object.
   --
   --  @return  a dollar object
   --
   function Dollar 
     (Amount : in Integer)
      return Object;
   
   --  Return string representation of the money object.
   --
   --  @param This  the money object.
   --  
   --  @return  string representation of the money object.
   --
   overriding
   function Image
     (This : in Object)
      return String;
   
   --  Equality operator for two money objects.
   --
   --  @param Left   the first money object.
   --  @param Right  the second money object.
   --
   --  @return  a boolean indicating whether the money objects
   --           are equivalent.
   --
   overriding
   function "=" 
     (Left  : in Object; 
      Right : in Object) 
      return Boolean;
   
   -- Binary addition operator for two money objects.
   --
   --  @param Left   the first money object.
   --  @param Right  the second money object.
   --
   --  @return  the sum as a money object
   --
   overriding
   function "+" 
     (Left  : in Object;
      Right : in Object) 
      return Object;
   
   -- Binary addition operator for a money object and an integer.
   --
   --  @param Left   the first money object.
   --  @param Right  the integer to add to the amount.
   --
   --  @return  the sum as a money object
   --
   overriding
   function "+" 
     (Left  : in Object;
      Right : in Integer) 
      return Object;
   
   -- Binary multiplication operator for two money objects.
   --
   --  @param Left   the first money object.
   --  @param Right  the second money object.
   --
   --  @return  the product as a money object
   --
   overriding
   function "*" 
     (Left  : in Object;
      Right : in Object) 
      return Object;
   
   --  Binary multiplication operator for a money object and an integer.
   --
   --  @param Left   the first money object.
   --  @param Right  the second money object.
   --
   --  @return  the product as a money object
   --
   overriding
   function "*" 
     (Left  : in Object; 
      Right : in Integer) 
      return Object;
   
   --  Return the currency type for this money object.
   -- 
   --  @param This  the money object
   --
   --  @return  the currency of this money object
   --
   overriding
   function Get_Currency
     (This : in Object)
      return Currency_Type;
   
private
   
   type Object is new Money_Interface.Object with
     record
        Amount   : Integer;
        Currency : Currency_Type;
     end record;

end Money;
