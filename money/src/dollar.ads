with Currency;

package Dollar is

   type Object is new Currency.Object with private;
   
   --  Constructor for the dollar object.
   --
   --  @param Amount  the value of the dollar object.
   --
   --  @return  the dollar object
   --  
   
   function Make 
     (Amount : in Integer)
      return Object;
   
   --  Return string representation of the dollar object.
   --
   --  @param This  the dollar object.
   --  
   --  @return  string representation of the dollar object.
   --
   overriding
   function Image
     (This : in Object)
      return String;
   
   --  Equality operator for two dollar objects.
   --
   --  @param Left   the first dollar object.
   --  @param Right  the second dollar object.
   --
   --  @return  a boolean indicating whether the dollar objects
   --           are equivalent.
   --
   overriding
   function Equals 
     (Left  : in Object;
      Right : in Object)
      return Boolean;
   
   --  Equality operator for two dollar objects.
   --
   --  @param Left   the first dollar object.
   --  @param Right  the second dollar object.
   --
   --  @return  a boolean indicating whether the dollar objects
   --           are equivalent.
   --
   overriding
   function "=" 
     (Left  : in Object; 
      Right : in Object) 
      return Boolean 
      renames Equals;
   
   --  Multiply this dollar object by the given integer multiplier.
   --
   --  @param This        the dollar object.
   --  @param Multiplier  the amount to multiply this dollar by.
   --
   --  @return  the product as a dollar object
   --
   overriding
   function Times 
     (This       : in Object;
      Multiplier : in Integer)
      return Object; 
   
   --  Binary multiplication operator for a dollar object and an integer.
   --
   --  @param Left   the first dollar object.
   --  @param Right  the second dollar object.
   --
   --  @return  the product as a dollar object
   --
   overriding
   function "*" 
     (Left  : in Object; 
      Right : in Integer) 
      return Object 
      renames Times;
   
   --  Multiply this dollar object by the given dollar object.
   --
   --  @param This        the dollar object.
   --  @param Multiplier  the dollar object to multiply by.
   --
   --  @return  the product as a dollar object
   --
   overriding
   function Times 
     (This       : in Object;
      Multiplier : in Object)
      return Object; 
   
   -- Binary multiplication operator for two dollar objects.
   --
   --  @param Left   the first dollar object.
   --  @param Right  the second dollar object.
   --
   --  @return  the product as a dollar object
   --
   overriding
   function "*" 
     (Left  : in Object;
      Right : in Object) 
      return Object 
      renames Times;
   
private
   
   type Object is new Currency.Object with
     record
        Amount : Integer;
     end record;

end Dollar;
