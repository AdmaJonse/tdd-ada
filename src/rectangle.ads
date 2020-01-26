with Shape;

package Rectangle is

  type Object is new Shape.Object with private;

  --  Constructor for the Rectangle object.
  --
  --  @param Length  the length of the Rectangle
  --  @param Width   the width of the Rectangle
  --
  --  @return  the Rectangle object
  --
  function Make
    (Length : in Natural;
     Width  : in Natural)
     return Object;

  --  Return a string representation of the given Rectangle object.
  --
  --  @return  the string representation of the Rectangle
  --
  overriding
  function Image
    (This : in Object)
     return String;

  --  Return a boolen indicating whether the given Rectangle objects
  --  are equivalent.
  --
  --  @param Left   the first Rectangle object
  --  @param Right  the second Rectangle object
  --
  --  @return  boolean indicating whether or not the Rectangles are equivalent
  --
  overriding
  function Equals
    (Left  : in Object;
     Right : in Object)
     return Boolean;

  --  Return the area of the given Rectangle object.
  --
  --  @return  the area of the Rectangle
  --
  overriding
  function Area
    (This : in Object)
     return Natural;

  --  Return the perimeter of the given Rectangle object.
  --
  --  @return  the perimeter of the Rectangle
  overriding
  function Perimeter
    (This : in Object)
     return Natural;

private

  type Object is new Shape.Object with
    record
      Length : Natural;
      Width  : Natural;
    end record;

end Rectangle;
