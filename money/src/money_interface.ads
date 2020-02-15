package Money_Interface with Pure is

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
   function "=" 
     (Left  : in Object'Class; 
      Right : in Object'Class) 
      return Boolean is abstract;
   
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
   
end Money_Interface;
