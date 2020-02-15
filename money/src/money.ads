with Money_Interface;

package Money is

   type Object is new Money_Interface.Object with private;
   
   --  Constructor for the money object.
   --
   --  @param Amount  the value of the money object.
   --
   --  @return  the money object
   --  
   
   function Make 
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
   
private
   
   type Object is new Money_Interface.Object with
     record
        Amount : Integer;
     end record;

end Money;
