--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Dollar.Object_Test_Data.

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
package body Dollar.Object_Test_Data.Object_Tests is

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
   procedure Test_Make_de4abd (Gnattest_T : in out Test_Object) renames Test_Make;
--  id:2.2/de4abd4690f251ff/Make/1/0/
   procedure Test_Make (Gnattest_T : in out Test_Object) is
   --  dollar.ads:14:4:Make
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (1) = Dollar.Make (1),
         Message   => "Test #1 - Constructed dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (2) = Dollar.Make (2),
         Message   => "Test #2 - Constructed dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (100) = Dollar.Make (100),
         Message   => "Test #3 - Constructed dollar does not match expected");

--  begin read only
   end Test_Make;
--  end read only


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_Object);
   procedure Test_Image_81b81d (Gnattest_T : in out Test_Object) renames Test_Image;
--  id:2.2/81b81d1be512fd61/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_Object) is
   --  dollar.ads:24:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Actual   => Dollar.Make (20).Image,
         Expected => "$20",
         Message  => "Test #1 - image does not match expected");

      AUnit.Assertions.Assert
        (Actual   => Dollar.Make (500).Image,
         Expected => "$500",
         Message  => "Test #2 - image does not match expected");

      AUnit.Assertions.Assert
        (Actual   => Dollar.Make (1000).Image,
         Expected => "$1000",
         Message  => "Test #3 - image does not match expected");

--  begin read only
   end Test_Image;
--  end read only


--  begin read only
   procedure Test_Equals (Gnattest_T : in out Test_Object);
   procedure Test_Equals_f29847 (Gnattest_T : in out Test_Object) renames Test_Equals;
--  id:2.2/f29847d7baf339f0/Equals/1/0/
   procedure Test_Equals (Gnattest_T : in out Test_Object) is
   --  dollar.ads:37:4:Equals
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Dollar.Equals (Dollar.Make(5), Dollar.Make(5)),
         Message   => "Test #1 - objects are not equivalent.");

      AUnit.Assertions.Assert
        (Condition => not Dollar.Equals (Dollar.Make(5), Dollar.Make(6)),
         Message   => "Test #2 - objects are equivalent.");

--  begin read only
   end Test_Equals;
--  end read only


--  begin read only
   procedure Test_Equal (Gnattest_T : in out Test_Object);
   procedure Test_Equal_3bce4c (Gnattest_T : in out Test_Object) renames Test_Equal;
--  id:2.2/3bce4c376167c24c/Equal/1/0/
   procedure Test_Equal (Gnattest_T : in out Test_Object) is
   --  dollar.ads:51:4:"="
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Dollar.Make(5) = Dollar.Make(5),
         Message   => "Test #3 - objects are not equivalent.");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make(5) /= Dollar.Make(6),
         Message   => "Test #4 - objects are equivalent.");

--  begin read only
   end Test_Equal;
--  end read only


--  begin read only
   procedure Test_1_Times (Gnattest_T : in out Test_Object);
   procedure Test_Times_c56911 (Gnattest_T : in out Test_Object) renames Test_1_Times;
--  id:2.2/c569111527aa6a00/Times/1/0/
   procedure Test_1_Times (Gnattest_T : in out Test_Object) is
   --  dollar.ads:65:4:Times
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (10) = Dollar.Make (5).Times (2),
         Message   => "Test #1 - Multiplied dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (30) = Dollar.Make (5).Times (6),
         Message   => "Test #2 - Multiplied dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (50) = Dollar.Make (5).Times (10),
         Message   => "Test #3 - Multiplied dollar does not match expected");

--  begin read only
   end Test_1_Times;
--  end read only


--  begin read only
   procedure Test_1_Multiply (Gnattest_T : in out Test_Object);
   procedure Test_Multiply_21f420 (Gnattest_T : in out Test_Object) renames Test_1_Multiply;
--  id:2.2/21f420eaa45b69b1/Multiply/1/0/
   procedure Test_1_Multiply (Gnattest_T : in out Test_Object) is
   --  dollar.ads:78:4:"*"
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (10) = Dollar.Make (5) * Dollar.Make (2),
         Message   => "Test #1 - Multiplied dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (15) = Dollar.Make (5) * Dollar.Make (3),
         Message   => "Test #2 - Multiplied dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (6) = Dollar.Make (2) * Dollar.Make (3),
         Message   => "Test #3 - Multiplied dollar does not match expected");

--  begin read only
   end Test_1_Multiply;
--  end read only


--  begin read only
   procedure Test_2_Times (Gnattest_T : in out Test_Object);
   procedure Test_Times_42bd3e (Gnattest_T : in out Test_Object) renames Test_2_Times;
--  id:2.2/42bd3ef0ba65cfad/Times/0/0/
   procedure Test_2_Times (Gnattest_T : in out Test_Object) is
   --  dollar.ads:92:4:Times
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (4) = Dollar.Make (2).Times (2),
         Message   => "Test #1 - Multiplied dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (9) = Dollar.Make (3).Times (3),
         Message   => "Test #2 - Multiplied dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (25) = Dollar.Make (5).Times (5),
         Message   => "Test #3 - Multiplied dollar does not match expected");

--  begin read only
   end Test_2_Times;
--  end read only


--  begin read only
   procedure Test_2_Multiply (Gnattest_T : in out Test_Object);
   procedure Test_Multiply_9e944b (Gnattest_T : in out Test_Object) renames Test_2_Multiply;
--  id:2.2/9e944b4936586cb0/Multiply/0/0/
   procedure Test_2_Multiply (Gnattest_T : in out Test_Object) is
   --  dollar.ads:105:4:"*"
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (4) = Dollar.Make (2) * 2,
         Message   => "Test #1 - Multiplied dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (9) = Dollar.Make (3) * 3,
         Message   => "Test #2 - Multiplied dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (25) = Dollar.Make (5) * 5,
         Message   => "Test #3 - Multiplied dollar does not match expected");

--  begin read only
   end Test_2_Multiply;
--  end read only


--  begin read only
   --  procedure Test_Times (Gnattest_T : in out Test);
   --  procedure Test_Times_4cc78a (Gnattest_T : in out Test) renames Test_Times;
--  id:2.2/4cc78abb25460b02/Times/0/1/
   --  procedure Test_Times (Gnattest_T : in out Test) is
--  end read only


--  begin read only
   --  end Test_Times;
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
end Dollar.Object_Test_Data.Object_Tests;
