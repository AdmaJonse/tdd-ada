package Currency with Pure is

   type Object is interface;
   
   --  Return string representation of the dollar object.
   --
   --  @param This  the dollar object.
   --  
   --  @return  string representation of the dollar object.
   --
   function Image
     (This : in Object)
      return String is abstract;
   
   --  Equality operator for two dollar objects.
   --
   --  @param Left   the first dollar object.
   --  @param Right  the second dollar object.
   --
   --  @return  a boolean indicating whether the dollar objects
   --           are equivalent.
   --
   function Equals 
     (Left  : in Object;
      Right : in Object)
      return Boolean is abstract;
   
   --  Equality operator for two dollar objects.
   --
   --  @param Left   the first dollar object.
   --  @param Right  the second dollar object.
   --
   --  @return  a boolean indicating whether the dollar objects
   --           are equivalent.
   --
   function "=" 
     (Left  : in Object; 
      Right : in Object) 
      return Boolean is abstract;
   
   --  Multiply this dollar object by the given integer multiplier.
   --
   --  @param This        the dollar object.
   --  @param Multiplier  the amount to multiply this dollar by.
   --
   --  @return  the product as a dollar object.
   --
   function Times 
     (This       : in Object;
      Multiplier : in Integer)
      return Object is abstract;
   
   --  Binary multiplication operator for a dollar object and an integer.
   --
   --  @param Left   the first dollar object.
   --  @param Right  the second dollar object.
   --
   --  @return  the product as a dollar object.
   --
   function "*" 
     (Left  : in Object; 
      Right : in Integer) 
      return Object is abstract;
   
   --  Multiply this dollar object by the given dollar object.
   --
   --  @param This        the dollar object.
   --  @param Multiplier  the dollar object to multiply by.
   --
   --  @return  the product as a dollar object.
   --
   function Times 
     (This       : in Object;
      Multiplier : in Object)
      return Object is abstract;
   
   -- Binary multiplication operator for two dollar objects.
   --
   --  @param Left   the first dollar object.
   --  @param Right  the second dollar object.
   --
   --  @return  the product as a dollar object.
   --
   function "*" 
     (Left  : in Object;
      Right : in Object) 
      return Object is abstract;

end Currency;
