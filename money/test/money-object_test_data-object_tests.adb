--  This package has been generated automatically by GNATtest.
--  You are allowed to add your code to the bodies of test routines.
--  Such changes will be kept during further regeneration of this file.
--  All code placed outside of test routine bodies will be lost. The
--  code intended to set up and tear down the test environment should be
--  placed into Money.Object_Test_Data.

with AUnit.Assertions; use AUnit.Assertions;
with System.Assertions;

--  begin read only
--  id:2.2/00/
--
--  This section can be used to add with clauses if necessary.
--
--  end read only

with Dollar;
with Franc;

--  begin read only
--  end read only
package body Money.Object_Test_Data.Object_Tests is

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
   procedure Test_Make_fbb4cd (Gnattest_T : in out Test_Object) renames Test_Make;
--  id:2.2/fbb4cd694ac362f2/Make/1/0/
   procedure Test_Make (Gnattest_T : in out Test_Object) is
   --  money.ads:14:4:Make
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Make (1) = Money.Make (1),
         Message   => "Test #1 - Constructed Money does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (2) = Money.Make (2),
         Message   => "Test #2 - Constructed Money does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (100) = Money.Make (100),
         Message   => "Test #3 - Constructed Money does not match expected");

--  begin read only
   end Test_Make;
--  end read only


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_Object);
   procedure Test_Image_3f8c3b (Gnattest_T : in out Test_Object) renames Test_Image;
--  id:2.2/3f8c3beed6b9a75f/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_Object) is
   --  money.ads:24:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Actual   => Money.Make (20).Image,
         Expected => "$20",
         Message  => "Test #1 - image does not match expected");

      AUnit.Assertions.Assert
        (Actual   => Money.Make (500).Image,
         Expected => "$500",
         Message  => "Test #2 - image does not match expected");

      AUnit.Assertions.Assert
        (Actual   => Money.Make (1000).Image,
         Expected => "$1000",
         Message  => "Test #3 - image does not match expected");
      
      AUnit.Assertions.Assert
        (Actual   => Franc.Make (123).Image,
         Expected => "$123",
         Message  => "Test #4 - image does not match expected");
      
      AUnit.Assertions.Assert
        (Actual   => Dollar.Make (2345).Image,
         Expected => "$2345",
         Message  => "Test #5 - image does not match expected");

--  begin read only
   end Test_Image;
--  end read only


--  begin read only
   procedure Test_Equal (Gnattest_T : in out Test_Object);
   procedure Test_Equal_34167a (Gnattest_T : in out Test_Object) renames Test_Equal;
--  id:2.2/34167a667df2605e/Equal/1/0/
   procedure Test_Equal (Gnattest_T : in out Test_Object) is
   --  money.ads:37:4:"="
--  end read only

      pragma Unreferenced (Gnattest_T);
      
      use type Dollar.Object;
      use type Franc.Object;

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Make (5) = Money.Make (5),
         Message   => "Test #1 - money objects are not equivalent.");

      AUnit.Assertions.Assert
        (Condition => Money.Make (5) /= Money.Make (6),
         Message   => "Test #2 - money objects are equivalent.");
      
      AUnit.Assertions.Assert
        (Condition => Franc.Make (5) = Franc.Make (5),
         Message   => "Test #3 - franc objects are not equivalent.");
      
      AUnit.Assertions.Assert
        (Condition => Franc.Make (5) /= Franc.Make (9),
         Message   => "Test #4 - franc objects are equivalent.");
      
      AUnit.Assertions.Assert
        (Condition => Dollar.Make (6) = Dollar.Make (6),
         Message   => "Test #5 - dollar objects are not equivalent.");
      
      AUnit.Assertions.Assert
        (Condition => Dollar.Make (6) /= Dollar.Make (99),
         Message   => "Test #6 - dollar objects are equivalent.");
      
--  begin read only
   end Test_Equal;
--  end read only


--  begin read only
   procedure Test_1_Multiply (Gnattest_T : in out Test_Object);
   procedure Test_Multiply_28f591 (Gnattest_T : in out Test_Object) renames Test_1_Multiply;
--  id:2.2/28f591cae0c9c9cb/Multiply/1/0/
   procedure Test_1_Multiply (Gnattest_T : in out Test_Object) is
   --  money.ads:50:4:"*"
--  end read only

      pragma Unreferenced (Gnattest_T);
      
      use type Dollar.Object;
      use type Franc.Object;

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Make (10) = Money.Make (5) * Money.Make (2),
         Message   => "Test #1 - Multiplied Money does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (15) = Money.Make (5) * Money.Make (3),
         Message   => "Test #2 - Multiplied Money does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (6) = Money.Make (2) * Money.Make (3),
         Message   => "Test #3 - Multiplied Money does not match expected");
      
      AUnit.Assertions.Assert
        (Condition => Franc.Make (100) = Franc.Make (10) * Franc.Make (10),
         Message   => "Test #4 - Multiplied Franc does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (144) = Dollar.Make (12) * Dollar.Make (12),
         Message   => "Test #5 - Multiplied Dollar does not match expected");

--  begin read only
   end Test_1_Multiply;
--  end read only


--  begin read only
   procedure Test_2_Multiply (Gnattest_T : in out Test_Object);
   procedure Test_Multiply_651ae7 (Gnattest_T : in out Test_Object) renames Test_2_Multiply;
--  id:2.2/651ae7870a94af9b/Multiply/0/0/
   procedure Test_2_Multiply (Gnattest_T : in out Test_Object) is
   --  money.ads:63:4:"*"
--  end read only

      pragma Unreferenced (Gnattest_T);
      
      use type Dollar.Object;
      use type Franc.Object;

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Make (4) = Money.Make (2) * 2,
         Message   => "Test #1 - Multiplied Money does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (9) = Money.Make (3) * 3,
         Message   => "Test #2 - Multiplied Money does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (25) = Money.Make (5) * 5,
         Message   => "Test #3 - Multiplied Money does not match expected");
      
      AUnit.Assertions.Assert
        (Condition => Franc.Make (25) = Franc.Make (5) * 5,
         Message   => "Test #4 - Multiplied Franc does not match expected");
      
      AUnit.Assertions.Assert
        (Condition => Dollar.Make (25) = Dollar.Make (5) * 5,
         Message   => "Test #5 - Multiplied Dollar does not match expected");

--  begin read only
   end Test_2_Multiply;
--  end read only


--  begin read only
   --  procedure Test_Times (Gnattest_T : in out Test);
   --  procedure Test_Times_129156 (Gnattest_T : in out Test) renames Test_Times;
--  id:2.2/12915641f56fe615/Times/0/1/
   --  procedure Test_Times (Gnattest_T : in out Test) is
--  end read only

--  begin read only
   --  end Test_Times;
--  end read only


--  begin read only
   --  procedure Test_Equals (Gnattest_T : in out Test);
   --  procedure Test_Equals_524d33 (Gnattest_T : in out Test) renames Test_Equals;
--  id:2.2/524d3344521d4fb6/Equals/0/1/
   --  procedure Test_Equals (Gnattest_T : in out Test) is
--  end read only

--  begin read only
   --  end Test_Equals;
--  end read only


--  begin read only
   --  procedure Test_Times (Gnattest_T : in out Test);
   --  procedure Test_Times_5480b6 (Gnattest_T : in out Test) renames Test_Times;
--  id:2.2/5480b6bbae1cef53/Times/0/1/
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
end Money.Object_Test_Data.Object_Tests;
