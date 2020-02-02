package Dollar is

   type Object is tagged private;
   
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
   function Image
     (This : in Object)
      return String;
   
   --  Multiply this dollar object by the given multiplier.
   --
   --  @param This        the dollar object.
   --  @param Multiplier  the amount to multiply this dollar by.
   --
   --  @return  the product as a dollar object
   --
   function Times 
     (This       : in Object;
      Multiplier : in Integer)
      return Object; 
   
private
   
   type Object is tagged
     record
        Amount : Integer;
     end record;

end Dollar;
