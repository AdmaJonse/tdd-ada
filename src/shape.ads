
--  @summary
--  Interface defining the operations of the Shape object.
--
--  @description
--  This package defines the operations that may be performed by a Shape.
--
package Shape is

  type Object is interface;

  --  Return a string representation of the given Shape object.
  --
  --  @param This  the Shape object
  --
  --  @return  the string representation of the Shape
  --
  function Image
    (This : in Object)
     return String is abstract;

  --  Return a boolen indicating whether the given Shape objects
  --  are equivalent.
  --
  --  @param Left   the first Shape object
  --  @param Right  the second Shape object
  --
  --  @return  boolean indicating whether or not the Shapes are equivalent
  --
  function Equals
    (Left  : in Object;
     Right : in Object)
     return Boolean is abstract;

  --  Return the area of the given Shape object.
  --
  --  @param This  the Shape object
  --
  --  @return  the area of the Shape
  --
  function Area
    (This : in Object)
     return Natural is abstract;

  --  Return the perimeter of the given Shape object.
  --
  --  @param This  the Shape object
  --
  --  @return  the perimeter of the Shape
  function Perimeter
    (This : in Object)
     return Natural is abstract;

end Shape;
