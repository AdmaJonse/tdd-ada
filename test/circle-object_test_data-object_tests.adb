--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Circle.Object_Test_Data.

with Ada.Numerics;
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
package body Circle.Object_Test_Data.Object_Tests is

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
   procedure Test_Make_9d65b2 (Gnattest_T : in out Test_Object) renames Test_Make;
--  id:2.2/9d65b2eebc9d19b0/Make/1/0/
   procedure Test_Make (Gnattest_T : in out Test_Object) is
   --  circle.ads:13:4:Make
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      -- No unit test for constructor
      null;

--  begin read only
   end Test_Make;
--  end read only


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_Object);
   procedure Test_Image_d7bd4f (Gnattest_T : in out Test_Object) renames Test_Image;
--  id:2.2/d7bd4f0b99859a1e/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_Object) is
   --  circle.ads:21:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

      Circle_One   : constant Circle.Object := Circle.Make (1.0);
      Circle_Two   : constant Circle.Object := Circle.Make (2.0);
      Circle_Three : constant Circle.Object := Circle.Make (16.0);
      Circle_Four  : constant Circle.Object := Circle.Make (102.0);

      String_One   : constant String := "Circle - radius:  1.00000E+00";
      String_Two   : constant String := "Circle - radius:  2.00000E+00";
      String_Three : constant String := "Circle - radius:  1.60000E+01";
      String_Four  : constant String := "Circle - radius:  1.02000E+02";

   begin

      AUnit.Assertions.Assert
        (Actual   => Circle_One.Image,
         Expected => String_One,
         Message  => "Unexpected output for Circle_One.");

      AUnit.Assertions.Assert
        (Actual   => Circle_Two.Image,
         Expected => String_Two,
         Message  => "Unexpected output for Circle_Two");

      AUnit.Assertions.Assert
        (Actual   => Circle_Three.Image,
         Expected => String_Three,
         Message  => "Unexpected output for Circle_Three.");

      AUnit.Assertions.Assert
        (Actual   => Circle_Four.Image,
         Expected => String_Four,
         Message  => "Unexpected output for Circle_Four.");

--  begin read only
   end Test_Image;
--  end read only


--  begin read only
   procedure Test_Equals (Gnattest_T : in out Test_Object);
   procedure Test_Equals_01c732 (Gnattest_T : in out Test_Object) renames Test_Equals;
--  id:2.2/01c73284afd79bc2/Equals/1/0/
   procedure Test_Equals (Gnattest_T : in out Test_Object) is
   --  circle.ads:34:4:Equals
--  end read only

      pragma Unreferenced (Gnattest_T);

      Circle_One   : constant Circle.Object := Circle.Make (1.0);
      Circle_Two   : constant Circle.Object := Circle.Make (2.0);
      Circle_Three : constant Circle.Object := Circle.Make (1.1);
      Circle_Four  : constant Circle.Object := Circle.Make (2.0);

   begin

      AUnit.Assertions.Assert
        (Condition => not Circle.Equals (Circle_One, Circle_Two),
         Message   => "Circles one and two are equivalent.");

      AUnit.Assertions.Assert
        (Condition => not Circle.Equals (Circle_One, Circle_Three),
         Message   => "Circles one and three are equivalent.");

      AUnit.Assertions.Assert
        (Condition => not Circle.Equals (Circle_Two, Circle_Three),
         Message   => "Circles two and two are equivalent.");

      AUnit.Assertions.Assert
        (Condition => Circle.Equals (Circle_Two, Circle_Four),
         Message   => "Circles one and two not are equivalent.");

--  begin read only
   end Test_Equals;
--  end read only


--  begin read only
   procedure Test_Area (Gnattest_T : in out Test_Object);
   procedure Test_Area_73bab9 (Gnattest_T : in out Test_Object) renames Test_Area;
--  id:2.2/73bab9603bcb06f2/Area/1/0/
   procedure Test_Area (Gnattest_T : in out Test_Object) is
   --  circle.ads:44:4:Area
--  end read only

      pragma Unreferenced (Gnattest_T);

      Circle_One   : constant Circle.Object := Circle.Make (1.0);
      Circle_Two   : constant Circle.Object := Circle.Make (2.0);
      Circle_Three : constant Circle.Object := Circle.Make (16.0);
      Circle_Four  : constant Circle.Object := Circle.Make (102.0);

      Area_One     : constant Float := Ada.Numerics.Pi;
      Area_Two     : constant Float := Ada.Numerics.Pi * 2.0 ** 2;
      Area_Three   : constant Float := Ada.Numerics.Pi * 16.0 ** 2;
      Area_Four    : constant Float := Ada.Numerics.Pi * 102.0 ** 2;

   begin

      AUnit.Assertions.Assert
        (Condition => Circle_One.Area = Area_One,
         Message   => "Unexpected area for Circle_One. Actual: " & Circle_One.Area'Img);

      AUnit.Assertions.Assert
        (Condition => Circle_Two.Area = Area_Two,
         Message   => "Unexpected area for Circle_Two. Actual: " & Circle_Two.Area'Img);

      AUnit.Assertions.Assert
        (Condition => Circle_Three.Area = Area_Three,
         Message   => "Unexpected area for Circle_Three. Actual: " & Circle_Three.Area'Img);

      AUnit.Assertions.Assert
        (Condition => Circle_Four.Area = Area_Four,
         Message   => "Unexpected area for Circle_Four. Actual: " & Circle_Four.Area'Img);

--  begin read only
   end Test_Area;
--  end read only


--  begin read only
   procedure Test_Perimeter (Gnattest_T : in out Test_Object);
   procedure Test_Perimeter_94f34e (Gnattest_T : in out Test_Object) renames Test_Perimeter;
--  id:2.2/94f34ebcf482f399/Perimeter/1/0/
   procedure Test_Perimeter (Gnattest_T : in out Test_Object) is
   --  circle.ads:52:4:Perimeter
--  end read only

      pragma Unreferenced (Gnattest_T);

      Circle_One      : constant Circle.Object := Circle.Make (1.0);
      Circle_Two      : constant Circle.Object := Circle.Make (2.0);
      Circle_Three    : constant Circle.Object := Circle.Make (16.0);

      Perimeter_One   : constant Float := 2.0 * Ada.Numerics.Pi;
      Perimeter_Two   : constant Float := 4.0 * Ada.Numerics.Pi;
      Perimeter_Three : constant Float := 32.0 * Ada.Numerics.Pi;

   begin

      AUnit.Assertions.Assert
        (Condition => Circle_One.Perimeter = Perimeter_One,
         Message   => "Unexpected perimeter for Circle_One. Actual: " & Circle_One.Perimeter'Img);

      AUnit.Assertions.Assert
        (Condition => Circle_Two.Perimeter = Perimeter_Two,
         Message   => "Unexpected perimeter for Circle_Two. Actual: " & Circle_Two.Perimeter'Img);

      AUnit.Assertions.Assert
        (Condition => Circle_Three.Perimeter = Perimeter_Three,
         Message   => "Unexpected perimeter for Circle_Three. Actual: " & Circle_Three.Perimeter'Img);

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
end Circle.Object_Test_Data.Object_Tests;
