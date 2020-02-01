--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Triangle.Object_Test_Data.

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
package body Triangle.Object_Test_Data.Object_Tests is

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
   procedure Test_Make_dafe26 (Gnattest_T : in out Test_Object) renames Test_Make;
--  id:2.2/dafe263894070199/Make/1/0/
   procedure Test_Make (Gnattest_T : in out Test_Object) is
   --  triangle.ads:15:4:Make
--  end read only

      pragma Unreferenced (Gnattest_T);

      Triangle_One     : constant Triangle.Object := Triangle.Make (2.0, 2.0, 3.0);
      Triangle_Two     : constant Triangle.Object := Triangle.Make (2.0, 2.0, 3.0);
      Invalid_Triangle : Triangle.Object;

   begin

      AUnit.Assertions.Assert
        (Actual   => Triangle_One.Image,
         Expected => Triangle_Two.Image,
         Message  => "Triangles one and two are not equivalent.");

      begin

         Invalid_Triangle := Triangle.Make (1.0, 2.0, 3.0);

         AUnit.Assertions.Assert
           (Condition => False,
            Message   => "Exception not raised for invalid triangle.");

      exception
         when others =>
            return;
      end;

--  begin read only
   end Test_Make;
--  end read only


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_Object);
   procedure Test_Image_d7bd4f (Gnattest_T : in out Test_Object) renames Test_Image;
--  id:2.2/d7bd4f0b99859a1e/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_Object) is
   --  triangle.ads:25:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

      Triangle_One   : constant Triangle.Object := Triangle.Make (1.0, 1.0, 1.0);
      Triangle_Two   : constant Triangle.Object := Triangle.Make (2.0, 3.0, 4.0);
      Triangle_Three : constant Triangle.Object := Triangle.Make (12.0, 13.0, 14.0);
      Triangle_Four  : constant Triangle.Object := Triangle.Make (102.0, 987.0, 1004.0);

      String_One     : constant String := "Triangle - side one:  1.00000E+00, side two:  1.00000E+00, side three:  1.00000E+00";
      String_Two     : constant String := "Triangle - side one:  2.00000E+00, side two:  3.00000E+00, side three:  4.00000E+00";
      String_Three   : constant String := "Triangle - side one:  1.20000E+01, side two:  1.30000E+01, side three:  1.40000E+01";
      String_Four    : constant String := "Triangle - side one:  1.02000E+02, side two:  9.87000E+02, side three:  1.00400E+03";

   begin

      AUnit.Assertions.Assert
        (Actual   => Triangle_One.Image,
         Expected => String_One,
         Message  => "Unexpected output for Triangle_One.");

      AUnit.Assertions.Assert
        (Actual   => Triangle_Two.Image,
         Expected => String_Two,
         Message  => "Unexpected output for Triangle_Two");

      AUnit.Assertions.Assert
        (Actual   => Triangle_Three.Image,
         Expected => String_Three,
         Message  => "Unexpected output for Triangle_Three.");

      AUnit.Assertions.Assert
        (Actual   => Triangle_Four.Image,
         Expected => String_Four,
         Message  => "Unexpected output for Triangle_Four.");

--  begin read only
   end Test_Image;
--  end read only


--  begin read only
   procedure Test_Equals (Gnattest_T : in out Test_Object);
   procedure Test_Equals_01c732 (Gnattest_T : in out Test_Object) renames Test_Equals;
--  id:2.2/01c73284afd79bc2/Equals/1/0/
   procedure Test_Equals (Gnattest_T : in out Test_Object) is
   --  triangle.ads:38:4:Equals
--  end read only

      pragma Unreferenced (Gnattest_T);

      Triangle_One   : constant Triangle.Object := Triangle.Make (7.0, 7.0, 7.0);
      Triangle_Two   : constant Triangle.Object := Triangle.Make (7.0, 7.0, 7.0);
      Triangle_Three : constant Triangle.Object := Triangle.Make (3.0, 4.0, 5.0);
      Triangle_Four  : constant Triangle.Object := Triangle.Make (3.0, 4.0, 5.0);

   begin

      AUnit.Assertions.Assert
        (Condition => Triangle.Equals (Triangle_One, Triangle_Two),
         Message   => "Triangles one and two are not equivalent.");

      AUnit.Assertions.Assert
        (Condition => Triangle.Equals (Triangle_Three, Triangle_Four),
         Message   => "Triangles three and four are not equivalent.");

      AUnit.Assertions.Assert
        (Condition => not Triangle.Equals (Triangle_One, Triangle_Four),
         Message   => "Triangles one and four are equivalent.");

      AUnit.Assertions.Assert
        (Condition => not Triangle.Equals (Triangle_Two, Triangle_Three),
         Message   => "Triangles two and three are equivalent.");

--  begin read only
   end Test_Equals;
--  end read only


--  begin read only
   procedure Test_Area (Gnattest_T : in out Test_Object);
   procedure Test_Area_73bab9 (Gnattest_T : in out Test_Object) renames Test_Area;
--  id:2.2/73bab9603bcb06f2/Area/1/0/
   procedure Test_Area (Gnattest_T : in out Test_Object) is
   --  triangle.ads:48:4:Area
--  end read only

      pragma Unreferenced (Gnattest_T);

      Triangle_One   : constant Triangle.Object := Triangle.Make (3.0, 4.0, 5.0);
      Triangle_Two   : constant Triangle.Object := Triangle.Make (6.0, 8.0, 10.0);
      Triangle_Three : constant Triangle.Object := Triangle.Make (12.0, 13.0, 14.0);
      Triangle_Four  : constant Triangle.Object := Triangle.Make (102.0, 987.0, 1004.0);

      Area_One       : constant Float := 6.0;
      Area_Two       : constant Float := 24.0;
      Area_Three     : constant Float := 72.30794;
      Area_Four      : constant Float := 49994.6515;

      function Error_Message
        (Name : in String;
         Tri  : in Triangle.Object;
         Area : in Float)
         return String is
         ("Unexpected area for " & Name & ". Actual: " & Tri.Area'Img & ", Expected: " & Area'Img);

   begin

      AUnit.Assertions.Assert
        (Condition => Triangle_One.Area = Area_One,
         Message   => Error_Message ("Triangle_One", Triangle_One, Area_One));

      AUnit.Assertions.Assert
        (Condition => Triangle_Two.Area = Area_Two,
         Message   => Error_Message ("Triangle_Two", Triangle_Two, Area_Two));

      AUnit.Assertions.Assert
        (Condition => Triangle_Three.Area = Area_Three,
         Message   => Error_Message ("Triangle_Three", Triangle_Three, Area_Three));

      AUnit.Assertions.Assert
        (Condition => Triangle_Four.Area = Area_Four,
         Message   => Error_Message ("Triangle_Four", Triangle_Four, Area_Four));

--  begin read only
   end Test_Area;
--  end read only


--  begin read only
   procedure Test_Perimeter (Gnattest_T : in out Test_Object);
   procedure Test_Perimeter_94f34e (Gnattest_T : in out Test_Object) renames Test_Perimeter;
--  id:2.2/94f34ebcf482f399/Perimeter/1/0/
   procedure Test_Perimeter (Gnattest_T : in out Test_Object) is
   --  triangle.ads:56:4:Perimeter
--  end read only

      pragma Unreferenced (Gnattest_T);

      Triangle_One    : constant Triangle.Object := Triangle.Make (1.0, 1.0, 1.0);
      Triangle_Two    : constant Triangle.Object := Triangle.Make (2.0, 3.0, 4.0);
      Triangle_Three  : constant Triangle.Object := Triangle.Make (12.0, 13.0, 14.0);
      Triangle_Four   : constant Triangle.Object := Triangle.Make (102.0, 987.0, 1004.0);

      Perimeter_One   : constant Float := 3.0;
      Perimeter_Two   : constant Float := 9.0;
      Perimeter_Three : constant Float := 39.0;
      Perimeter_Four  : constant Float := 2093.0;

      function Error_Message
        (Name      : in String;
         Tri       : in Triangle.Object;
         Perimeter : in Float)
         return String is
        ("Unexpected perimeter for " & Name & ". Actual: " & Tri.Perimeter'Img & ", Expected: " & Perimeter'Img);

   begin

      AUnit.Assertions.Assert
        (Condition => Triangle_One.Perimeter = Perimeter_One,
         Message   => Error_Message ("Triangle_One", Triangle_One, Perimeter_One));

      AUnit.Assertions.Assert
        (Condition => Triangle_Two.Perimeter = Perimeter_Two,
         Message   => Error_Message ("Triangle_Two", Triangle_Two, Perimeter_Two));

      AUnit.Assertions.Assert
        (Condition => Triangle_Three.Perimeter = Perimeter_Three,
         Message   => Error_Message ("Triangle_Three", Triangle_Three, Perimeter_Three));

      AUnit.Assertions.Assert
        (Condition => Triangle_Four.Perimeter = Perimeter_Four,
         Message   => Error_Message ("Triangle_Four", Triangle_Four, Perimeter_Four));

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
end Triangle.Object_Test_Data.Object_Tests;
