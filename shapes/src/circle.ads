with Shape;

package Circle is

   type Object is new Shape.Object with private;

   --  Constructor for the Circle object.
   --
   --  @param Radius  the radius of the Circle
   --
   --  @return  the Circle object
   --
   function Make
     (Radius : in Float)
      return Object;

   --  Return a string representation of the given Circle object.
   --
   --  @return  the string representation of the Circle
   --
   overriding
   function Image
     (This : in Object)
      return String;

   --  Return a boolen indicating whether the given Circle objects
   --  are equivalent.
   --
   --  @param Left   the first Circle object
   --  @param Right  the second Circle object
   --
   --  @return  boolean indicating whether or not the Circle are equivalent
   --
   overriding
   function Equals
     (Left  : in Object;
      Right : in Object)
      return Boolean;

   --  Return the area of the given Circle object.
   --
   --  @return  the area of the Circle
   --
   overriding
   function Area
     (This : in Object)
      return Float;

   --  Return the perimeter of the given Circle object.
   --
   --  @return  the perimeter of the Circle
   overriding
   function Perimeter
     (This : in Object)
      return Float;

private

   type Object is new Shape.Object with
     record
        Radius : Float;
     end record;

end Circle;
