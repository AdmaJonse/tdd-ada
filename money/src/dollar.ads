with Money;

package Dollar is

   type Object is new Money.Object with null record;
   
   --  Constructor for the dollar object.
   --
   --  @param Amount  the amount of the new dollar object
   --
   --  @return  the new dollar object.
   --
   function Make 
     (Amount : in Integer)
      return Object;

end Dollar;
