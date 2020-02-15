package body Franc is

   -----------------------------------------------------------------------------
   --
   function Make 
     (Amount : in Integer)
      return Object is 
   begin
      
      return (Money.Make (Amount) with null record);
      
   end Make;
   
end Franc;

