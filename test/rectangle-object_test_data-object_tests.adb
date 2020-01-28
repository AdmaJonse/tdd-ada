--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Rectangle.Object_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

--  begin read only
--  end read only
package body Rectangle.Object_Test_Data.Object_Tests is

--  begin read only
--  id:2.2/01/
--
--  This section can be used to add global variables and other elements.
--
--  end read only

--  begin read only
--  end read only

--  begin read only
   procedure Test_Make (Gnattest_T : in out Test_Object);
   procedure Test_Make_0b3516 (Gnattest_T : in out Test_Object) renames Test_Make;
--  id:2.2/0b3516f945b2459c/Make/1/0/
   procedure Test_Make (Gnattest_T : in out Test_Object) is
   --  rectangle.ads:14:4:Make
--  end read only

      pragma Unreferenced (Gnattest_T);

      Rectangle_One : constant Rectangle.Object := Rectangle.Make (1.0, 1.0);
      Rectangle_Two : constant Rectangle.Object := Rectangle.Make (1.0, 1.0);

   begin

      AUnit.Assertions.Assert
        (Actual   => Rectangle.Image (Rectangle_One),
         Expected => Rectangle.Image (Rectangle_Two),
         Message  => "Rectangles one and two are equivalent.");

--  begin read only
   end Test_Make;
--  end read only


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_Object);
   procedure Test_Image_d7bd4f (Gnattest_T : in out Test_Object) renames Test_Image;
--  id:2.2/d7bd4f0b99859a1e/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_Object) is
   --  rectangle.ads:23:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

      Rectangle_One   : constant Rectangle.Object := Rectangle.Make (1.0, 1.0);
      Rectangle_Two   : constant Rectangle.Object := Rectangle.Make (2.0, 3.0);
      Rectangle_Three : constant Rectangle.Object := Rectangle.Make (16.0, 99.0);
      Rectangle_Four  : constant Rectangle.Object := Rectangle.Make (102.0, 987.0);

      String_One      : constant String := "Rectangle - length:  1.00000E+00, width:  1.00000E+00";
      String_Two      : constant String := "Rectangle - length:  2.00000E+00, width:  3.00000E+00";
      String_Three    : constant String := "Rectangle - length:  1.60000E+01, width:  9.90000E+01";
      String_Four     : constant String := "Rectangle - length:  1.02000E+02, width:  9.87000E+02";

   begin

      AUnit.Assertions.Assert
        (Actual   => Rectangle_One.Image,
         Expected => String_One,
         Message  => "Unexpected output for Rectangle_One.");

      AUnit.Assertions.Assert
        (Actual   => Rectangle_Two.Image,
         Expected => String_Two,
         Message  => "Unexpected output for Rectangle_Two");

      AUnit.Assertions.Assert
        (Actual   => Rectangle_Three.Image,
         Expected => String_Three,
         Message  => "Unexpected output for Rectangle_Three.");

      AUnit.Assertions.Assert
        (Actual   => Rectangle_Four.Image,
         Expected => String_Four,
         Message  => "Unexpected output for Rectangle_Four.");

--  begin read only
   end Test_Image;
--  end read only


--  begin read only
   procedure Test_Equals (Gnattest_T : in out Test_Object);
   procedure Test_Equals_01c732 (Gnattest_T : in out Test_Object) renames Test_Equals;
--  id:2.2/01c73284afd79bc2/Equals/1/0/
   procedure Test_Equals (Gnattest_T : in out Test_Object) is
   --  rectangle.ads:36:4:Equals
--  end read only

      pragma Unreferenced (Gnattest_T);

      Rectangle_One   : constant Rectangle.Object := Rectangle.Make (7.0, 7.0);
      Rectangle_Two   : constant Rectangle.Object := Rectangle.Make (7.0, 7.0);
      Rectangle_Three : constant Rectangle.Object := Rectangle.Make (3.0, 4.0);
      Rectangle_Four  : constant Rectangle.Object := Rectangle.Make (3.0, 4.0);

   begin

      AUnit.Assertions.Assert
        (Condition => Rectangle.Equals (Rectangle_One, Rectangle_Two),
         Message   => "Rectangles one and two are not equivalent.");

      AUnit.Assertions.Assert
        (Condition => Rectangle.Equals (Rectangle_Three, Rectangle_Four),
         Message   => "Rectangles three and four are not equivalent.");

      AUnit.Assertions.Assert
        (Condition => not Rectangle.Equals (Rectangle_One, Rectangle_Four),
         Message   => "Rectangles one and four are equivalent.");

      AUnit.Assertions.Assert
        (Condition => not Rectangle.Equals (Rectangle_Two, Rectangle_Three),
         Message   => "Rectangles two and three are equivalent.");

--  begin read only
   end Test_Equals;
--  end read only


--  begin read only
   procedure Test_Area (Gnattest_T : in out Test_Object);
   procedure Test_Area_73bab9 (Gnattest_T : in out Test_Object) renames Test_Area;
--  id:2.2/73bab9603bcb06f2/Area/1/0/
   procedure Test_Area (Gnattest_T : in out Test_Object) is
   --  rectangle.ads:46:4:Area
--  end read only

      pragma Unreferenced (Gnattest_T);

      Rectangle_One   : constant Rectangle.Object := Rectangle.Make (1.0, 1.0);
      Rectangle_Two   : constant Rectangle.Object := Rectangle.Make (2.0, 3.0);
      Rectangle_Three : constant Rectangle.Object := Rectangle.Make (16.0, 99.0);
      Rectangle_Four  : constant Rectangle.Object := Rectangle.Make (102.0, 987.0);

      Area_One        : constant Float := 1.0;
      Area_Two        : constant Float := 6.0;
      Area_Three      : constant Float := 1584.0;
      Area_Four       : constant Float := 100674.0;

   begin

      AUnit.Assertions.Assert
        (Condition => Rectangle_One.Area = Area_One,
         Message   => "Unexpected area for Rectangle_One.");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Two.Area = Area_Two,
         Message     => "Unexpected area for Rectangle_Two");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Three.Area = Area_Three,
         Message     => "Unexpected area for Rectangle_Three.");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Four.Area = Area_Four,
         Message     => "Unexpected area for Rectangle_Four.");

--  begin read only
   end Test_Area;
--  end read only


--  begin read only
   procedure Test_Perimeter (Gnattest_T : in out Test_Object);
   procedure Test_Perimeter_94f34e (Gnattest_T : in out Test_Object) renames Test_Perimeter;
--  id:2.2/94f34ebcf482f399/Perimeter/1/0/
   procedure Test_Perimeter (Gnattest_T : in out Test_Object) is
   --  rectangle.ads:54:4:Perimeter
--  end read only

      pragma Unreferenced (Gnattest_T);

      Rectangle_One   : constant Rectangle.Object := Rectangle.Make (1.0, 1.0);
      Rectangle_Two   : constant Rectangle.Object := Rectangle.Make (2.0, 3.0);
      Rectangle_Three : constant Rectangle.Object := Rectangle.Make (16.0, 99.0);
      Rectangle_Four  : constant Rectangle.Object := Rectangle.Make (102.0, 987.0);

      Perimeter_One   : constant Float := 4.0;
      Perimeter_Two   : constant Float := 10.0;
      Perimeter_Three : constant Float := 230.0;
      Perimeter_Four  : constant Float := 2178.0;

   begin

      AUnit.Assertions.Assert
        (Condition => Rectangle_One.Perimeter = Perimeter_One,
         Message   => "Unexpected perimeter for Rectangle_One.");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Two.Perimeter = Perimeter_Two,
         Message     => "Unexpected perimeter for Rectangle_Two");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Three.Perimeter = Perimeter_Three,
         Message     => "Unexpected perimeter for Rectangle_Three.");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Four.Perimeter = Perimeter_Four,
         Message     => "Unexpected perimeter for Rectangle_Four.");

--  begin read only
   end Test_Perimeter;
--  end read only

--  begin read only
--  id:2.2/02/
--
--  This section can be used to add elaboration code for the global state.
--
begin
--  end read only
   null;
--  begin read only
--  end read only
end Rectangle.Object_Test_Data.Object_Tests;
