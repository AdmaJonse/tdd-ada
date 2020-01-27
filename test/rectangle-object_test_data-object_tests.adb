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
   procedure Test_Make_38cecc (Gnattest_T : in out Test_Object) renames Test_Make;
--  id:2.2/38cecc73236c432f/Make/1/0/
   procedure Test_Make (Gnattest_T : in out Test_Object) is
   --  rectangle.ads:14:3:Make
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      -- No unit tests for Make
      null;

--  begin read only
   end Test_Make;
--  end read only


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_Object);
   procedure Test_Image_d7bd4f (Gnattest_T : in out Test_Object) renames Test_Image;
--  id:2.2/d7bd4f0b99859a1e/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_Object) is
   --  rectangle.ads:23:3:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

      Rectangle_One         : constant Rectangle.Object := Rectangle.Make (Length => 1, Width => 1);
      Rectangle_Two         : constant Rectangle.Object := Rectangle.Make (Length => 2, Width => 3);
      Rectangle_Three       : constant Rectangle.Object := Rectangle.Make (Length => 16, Width => 99);
      Rectangle_Four        : constant Rectangle.Object := Rectangle.Make (Length => 102, Width => 987);

      Expected_String_One   : constant String := "Rectangle - length:  1, width:  1";
      Expected_String_Two   : constant String := "Rectangle - length:  2, width:  3";
      Expected_String_Three : constant String := "Rectangle - length:  16, width:  99";
      Expected_String_Four  : constant String := "Rectangle - length:  102, width:  987";

   begin

      AUnit.Assertions.Assert
        (Actual   => Rectangle_One.Image,
         Expected => Expected_String_One,
         Message  => "Unexpected output for Rectangle_One.");

      AUnit.Assertions.Assert
        (Actual   => Rectangle_Two.Image,
         Expected => Expected_String_Two,
         Message  => "Unexpected output for Rectangle_Two");

      AUnit.Assertions.Assert
        (Actual   => Rectangle_Three.Image,
         Expected => Expected_String_Three,
         Message  => "Unexpected output for Rectangle_Three.");

      AUnit.Assertions.Assert
        (Actual   => Rectangle_Four.Image,
         Expected => Expected_String_Four,
         Message  => "Unexpected output for Rectangle_Four.");

--  begin read only
   end Test_Image;
--  end read only


--  begin read only
   procedure Test_Equals (Gnattest_T : in out Test_Object);
   procedure Test_Equals_01c732 (Gnattest_T : in out Test_Object) renames Test_Equals;
--  id:2.2/01c73284afd79bc2/Equals/1/0/
   procedure Test_Equals (Gnattest_T : in out Test_Object) is
   --  rectangle.ads:36:3:Equals
--  end read only

      pragma Unreferenced (Gnattest_T);

      Rectangle_One   : constant Rectangle.Object := Rectangle.Make (Length => 7, Width => 7);
      Rectangle_Two   : constant Rectangle.Object := Rectangle.Make (Length => 7, Width => 7);
      Rectangle_Three : constant Rectangle.Object := Rectangle.Make (Length => 3, Width => 4);
      Rectangle_Four  : constant Rectangle.Object := Rectangle.Make (Length => 3, Width => 4);

   begin

      AUnit.Assertions.Assert
        (Condition => Rectangle.Equals (Rectangle_One, Rectangle_Two),
         Message   => "Rectangles One and Two are not equivalent.");

      AUnit.Assertions.Assert
        (Condition => Rectangle.Equals (Rectangle_Three, Rectangle_Four),
         Message   => "Rectangles Three and Four are not equivalent.");

      AUnit.Assertions.Assert
        (Condition => not Rectangle.Equals (Rectangle_One, Rectangle_Four),
         Message   => "Rectangles One and Four are equivalent.");

      AUnit.Assertions.Assert
        (Condition => not Rectangle.Equals (Rectangle_Two, Rectangle_Three),
         Message   => "Rectangles Two and Three are equivalent.");

--  begin read only
   end Test_Equals;
--  end read only


--  begin read only
   procedure Test_Area (Gnattest_T : in out Test_Object);
   procedure Test_Area_e5361e (Gnattest_T : in out Test_Object) renames Test_Area;
--  id:2.2/e5361e3762735e0f/Area/1/0/
   procedure Test_Area (Gnattest_T : in out Test_Object) is
   --  rectangle.ads:46:3:Area
--  end read only

      pragma Unreferenced (Gnattest_T);

      Rectangle_One       : constant Rectangle.Object := Rectangle.Make (Length => 1, Width => 1);
      Rectangle_Two       : constant Rectangle.Object := Rectangle.Make (Length => 2, Width => 3);
      Rectangle_Three     : constant Rectangle.Object := Rectangle.Make (Length => 16, Width => 99);
      Rectangle_Four      : constant Rectangle.Object := Rectangle.Make (Length => 102, Width => 987);

      Expected_Area_One   : constant Natural := 1;
      Expected_Area_Two   : constant Natural := 6;
      Expected_Area_Three : constant Natural := 1584;
      Expected_Area_Four  : constant Natural := 100674;

   begin

      AUnit.Assertions.Assert
        (Condition => Rectangle_One.Area = Expected_Area_One,
         Message   => "Unexpected area for Rectangle_One.");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Two.Area = Expected_Area_Two,
         Message     => "Unexpected area for Rectangle_Two");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Three.Area = Expected_Area_Three,
         Message     => "Unexpected area for Rectangle_Three.");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Four.Area = Expected_Area_Four,
         Message     => "Unexpected area for Rectangle_Four.");

--  begin read only
   end Test_Area;
--  end read only


--  begin read only
   procedure Test_Perimeter (Gnattest_T : in out Test_Object);
   procedure Test_Perimeter_b8dd91 (Gnattest_T : in out Test_Object) renames Test_Perimeter;
--  id:2.2/b8dd911634ecd27f/Perimeter/1/0/
   procedure Test_Perimeter (Gnattest_T : in out Test_Object) is
   --  rectangle.ads:54:3:Perimeter
--  end read only

      pragma Unreferenced (Gnattest_T);

      Rectangle_One       : constant Rectangle.Object := Rectangle.Make (Length => 1, Width => 1);
      Rectangle_Two       : constant Rectangle.Object := Rectangle.Make (Length => 2, Width => 3);
      Rectangle_Three     : constant Rectangle.Object := Rectangle.Make (Length => 16, Width => 99);
      Rectangle_Four      : constant Rectangle.Object := Rectangle.Make (Length => 102, Width => 987);

      Expected_Perimeter_One   : constant Natural := 4;
      Expected_Perimeter_Two   : constant Natural := 10;
      Expected_Perimeter_Three : constant Natural := 230;
      Expected_Perimeter_Four  : constant Natural := 2178;

   begin

      AUnit.Assertions.Assert
        (Condition => Rectangle_One.Perimeter = Expected_Perimeter_One,
         Message   => "Unexpected perimeter for Rectangle_One.");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Two.Perimeter = Expected_Perimeter_Two,
         Message     => "Unexpected perimeter for Rectangle_Two");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Three.Perimeter = Expected_Perimeter_Three,
         Message     => "Unexpected perimeter for Rectangle_Three.");

      AUnit.Assertions.Assert
        (Condition   => Rectangle_Four.Perimeter = Expected_Perimeter_Four,
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
