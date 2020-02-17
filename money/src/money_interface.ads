with Money_Types; use Money_Types;

package Money_Interface with Pure is

   type Object is interface;
   
   --  Return string representation of the money object.
   --
   --  @param This  the money object.
   --  
   --  @return  string representation of the money object.
   --
   function Image
     (This : in Object)
      return String is abstract;
   
   --  Equality operator for two money objects.
   --
   --  @param Left   the first money object.
   --  @param Right  the second money object.
   --
   --  @return  a boolean indicating whether the money objects
   --           are equivalent.
   --
   function "=" 
     (Left  : in Object; 
      Right : in Object) 
      return Boolean is abstract;
   
   --  Binary addition operator for two money objects.
   --
   --  @param Left   the first money object.
   --  @param Right  the second money object.
   --
   --  @return  the sum as a money object.
   --
   function "+" 
     (Left  : in Object; 
      Right : in Object) 
      return Object is abstract;
   
   --  Binary addition operator for a money object and an integer.
   --
   --  @param Left   the first money object.
   --  @param Right  the integer to add to the amount.
   --
   --  @return  the sum as a money object.
   --
   function "+" 
     (Left  : in Object; 
      Right : in Integer) 
      return Object is abstract;
   
   --  Binary multiplication operator for two money objects.
   --
   --  @param Left   the first money object.
   --  @param Right  the second money object.
   --
   --  @return  the product as a money object.
   --
   function "*" 
     (Left  : in Object;
      Right : in Object) 
      return Object is abstract;
   
   --  Binary multiplication operator for a money object and an integer.
   --
   --  @param Left   the first money object.
   --  @param Right  integer to multiple amount by.
   --
   --  @return  the product as a money object.
   --
   function "*" 
     (Left  : in Object; 
      Right : in Integer) 
      return Object is abstract;
   
   --  Return the currency type for this money object.
   -- 
   --  @param This  the money object
   --
   --  @return  the currency of this money object
   --
   function Get_Currency
     (This : in Object)
      return Currency_Type is abstract;
   
end Money_Interface;
