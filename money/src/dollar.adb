package body Dollar is
   
   -----------------------------------------------------------------------------
   --
   function Make 
     (Amount : in Integer)
      return Object is 
   begin
      
      return (Money.Make (Amount) with null record);
      
   end Make;

end Dollar;
