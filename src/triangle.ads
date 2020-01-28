with Shape;

package Triangle is

   type Object is new Shape.Object with private;

   --  Constructor for the Triangle object.
   --
   --  @param Side_One    the length of the first side of the Triangle
   --  @param Side_Two    the length of the second side of the Triangle
   --  @param Side_Three  the length of the third side of the Triangle
   --
   --  @return  the Triangle object
   --
   function Make
     (Side_One   : in Float;
      Side_Two   : in Float;
      Side_Three : in Float)
      return Object;

   --  Return a string representation of the given Triangle object.
   --
   --  @return  the string representation of the Triangle
   --
   overriding
   function Image
     (This : in Object)
      return String;

   --  Return a boolen indicating whether the given Triangle objects
   --  are equivalent.
   --
   --  @param Left   the first Triangle object
   --  @param Right  the second Triangle object
   --
   --  @return  boolean indicating whether or not the Triangles are equivalent
   --
   overriding
   function Equals
     (Left  : in Object;
      Right : in Object)
      return Boolean;

   --  Return the area of the given Triangle object.
   --
   --  @return  the area of the Triangle
   --
   overriding
   function Area
     (This : in Object)
      return Float;

   --  Return the perimeter of the given Triangle object.
   --
   --  @return  the perimeter of the Triangle
   overriding
   function Perimeter
     (This : in Object)
      return Float;

private

   type Object is new Shape.Object with
     record
        Side_One   : Float;
        Side_Two   : Float;
        Side_Three : Float;
     end record;

end Triangle;
