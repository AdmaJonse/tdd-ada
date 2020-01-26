package body Rectangle is

  ------------------------------------------------------------------------------
  --
  function Make
    (Length : in Natural;
     Width  : in Natural)
     return Object is
    (Object'(Length => Length,
             Width  => Width));

  ------------------------------------------------------------------------------
  --
  function Image
    (This : in Object)
     return String is
    ("Rectangle - length: " & This.Length'Img & ", width: " & This.Width'Img);

  ------------------------------------------------------------------------------
  --
  function Equals
    (Left  : in Object;
     Right : in Object)
     return Boolean is
    (Left.Length = Right.Length and Left.Width = Left.Length);

  ------------------------------------------------------------------------------
  --
  function Area
    (This : in Object)
     return Natural is
    (This.Length * This.Width);

  ------------------------------------------------------------------------------
  --
  function Perimeter
    (This : in Object)
     return Natural is
    (2 * This.Length + 2 * This.Width);

end Rectangle;
