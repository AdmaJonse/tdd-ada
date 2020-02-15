with Money;

package Franc is

   type Object is new Money.Object with null record;
   
   --  Constructor for the franc object.
   --
   --  @param Amount  the amount of the new franc object
   --
   --  @return  the new franc object.
   --
   function Make 
     (Amount : in Integer)
      return Object;
   
end Franc;
