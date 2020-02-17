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

with Money_Types; use Money_Types;

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
   procedure Test_1_Make (Gnattest_T : in out Test_Object);
   procedure Test_Make_fbb4cd (Gnattest_T : in out Test_Object) renames Test_1_Make;
--  id:2.2/fbb4cd694ac362f2/Make/1/0/
   procedure Test_1_Make (Gnattest_T : in out Test_Object) is
   --  money.ads:15:4:Make
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
   end Test_1_Make;
--  end read only


--  begin read only
   procedure Test_2_Make (Gnattest_T : in out Test_Object);
   procedure Test_Make_3dffd0 (Gnattest_T : in out Test_Object) renames Test_2_Make;
--  id:2.2/3dffd06ba26fd195/Make/0/0/
   procedure Test_2_Make (Gnattest_T : in out Test_Object) is
   --  money.ads:26:4:Make
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Make (1, CHF) = Money.Make (1, CHF),
         Message   => "Test #1 - Constructed Money does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (2, USD) = Money.Make (2, USD),
         Message   => "Test #2 - Constructed Money does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (100, None) = Money.Make (100, None),
         Message   => "Test #3 - Constructed Money does not match expected");

--  begin read only
   end Test_2_Make;
--  end read only


--  begin read only
   procedure Test_Franc (Gnattest_T : in out Test_Object);
   procedure Test_Franc_fe330c (Gnattest_T : in out Test_Object) renames Test_Franc;
--  id:2.2/fe330c269d5eb017/Franc/1/0/
   procedure Test_Franc (Gnattest_T : in out Test_Object) is
   --  money.ads:37:4:Franc
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Franc (1) = Money.Make (1, CHF),
         Message   => "Test #1 - constructed franc does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Franc (2) = Money.Franc (2),
         Message   => "Test #2 - constructed franc does not match expected");

--  begin read only
   end Test_Franc;
--  end read only


--  begin read only
   procedure Test_Dollar (Gnattest_T : in out Test_Object);
   procedure Test_Dollar_9ff2ad (Gnattest_T : in out Test_Object) renames Test_Dollar;
--  id:2.2/9ff2ad1f012fa33c/Dollar/1/0/
   procedure Test_Dollar (Gnattest_T : in out Test_Object) is
   --  money.ads:47:4:Dollar
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Dollar (1) = Money.Make (1, USD),
         Message   => "Test #1 - constructed dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Dollar (2) = Money.Dollar (2),
         Message   => "Test #2 - constructed dollar does not match expected");

--  begin read only
   end Test_Dollar;
--  end read only


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_Object);
   procedure Test_Image_3f8c3b (Gnattest_T : in out Test_Object) renames Test_Image;
--  id:2.2/3f8c3beed6b9a75f/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_Object) is
   --  money.ads:57:4:Image
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
        (Actual   => Money.Franc (123).Image,
         Expected => "$123",
         Message  => "Test #4 - image does not match expected");
      
      AUnit.Assertions.Assert
        (Actual   => Money.Dollar (2345).Image,
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
   --  money.ads:70:4:"="
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Make (5) = Money.Make (5),
         Message   => "Test #1 - money objects are not equivalent.");

      AUnit.Assertions.Assert
        (Condition => Money.Make (5) /= Money.Make (6),
         Message   => "Test #2 - money objects are equivalent.");
      
      AUnit.Assertions.Assert
        (Condition => Money.Franc (5) = Money.Franc (5),
         Message   => "Test #3 - franc objects are not equivalent.");
      
      AUnit.Assertions.Assert
        (Condition => Money.Franc (5) /= Money.Franc (9),
         Message   => "Test #4 - franc objects are equivalent.");
      
      AUnit.Assertions.Assert
        (Condition => Money.Dollar (6) = Money.Dollar (6),
         Message   => "Test #5 - dollar objects are not equivalent.");
      
      AUnit.Assertions.Assert
        (Condition => Money.Dollar (6) /= Money.Dollar (99),
         Message   => "Test #6 - dollar objects are equivalent.");
      
      AUnit.Assertions.Assert
        (Condition => Money.Dollar (6) /= Money.Franc (6),
         Message   => "Test #7 - francs and dollars should not be equivalent.");
      
--  begin read only
   end Test_Equal;
--  end read only


--  begin read only
   procedure Test_1_Plus (Gnattest_T : in out Test_Object);
   procedure Test_Plus_f5e1b6 (Gnattest_T : in out Test_Object) renames Test_1_Plus;
--  id:2.2/f5e1b6fe05423613/Plus/1/0/
   procedure Test_1_Plus (Gnattest_T : in out Test_Object) is
   --  money.ads:83:4:"+"
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Make (7) = Money.Make (5) + Money.Make (2),
         Message   => "Test #1 - sum does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (8) = Money.Make (5) + Money.Make (3),
         Message   => "Test #2 - sum does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (5) = Money.Make (2) + Money.Make (3),
         Message   => "Test #3 - sum does not match expected");
      
      AUnit.Assertions.Assert
        (Condition => Money.Franc (20) = Money.Franc (10) + Money.Franc (10),
         Message   => "Test #4 - sum does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Dollar (24) = Money.Dollar (12) + Money.Dollar (12),
         Message   => "Test #5 - sum does not match expected");

--  begin read only
   end Test_1_Plus;
--  end read only


--  begin read only
   procedure Test_2_Plus (Gnattest_T : in out Test_Object);
   procedure Test_Plus_d39bde (Gnattest_T : in out Test_Object) renames Test_2_Plus;
--  id:2.2/d39bdec177301aef/Plus/0/0/
   procedure Test_2_Plus (Gnattest_T : in out Test_Object) is
   --  money.ads:96:4:"+"
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Make (4) = Money.Make (2) + 2,
         Message   => "Test #1 - sum does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (6) = Money.Make (3) + 3,
         Message   => "Test #2 - sum does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Make (10) = Money.Make (5) + 5,
         Message   => "Test #3 - sum does not match expected");
      
      AUnit.Assertions.Assert
        (Condition => Money.Franc (10) = Money.Franc (5) + 5,
         Message   => "Test #4 - sum does not match expected");
      
      AUnit.Assertions.Assert
        (Condition => Money.Dollar (10) = Money.Dollar (5) + 5,
         Message   => "Test #5 - sum does not match expected");

--  begin read only
   end Test_2_Plus;
--  end read only


--  begin read only
   procedure Test_2_Multiply (Gnattest_T : in out Test_Object);
   procedure Test_Multiply_651ae7 (Gnattest_T : in out Test_Object) renames Test_2_Multiply;
--  id:2.2/651ae7870a94af9b/Multiply/0/0/
   procedure Test_2_Multiply (Gnattest_T : in out Test_Object) is
   --  money.ads:109:4:"*"
--  end read only

      pragma Unreferenced (Gnattest_T);

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
        (Condition => Money.Franc (100) = Money.Franc (10) * Money.Franc (10),
         Message   => "Test #4 - Multiplied Franc does not match expected");

      AUnit.Assertions.Assert
        (Condition => Money.Dollar (144) = Money.Dollar (12) * Money.Dollar (12),
         Message   => "Test #5 - Multiplied Dollar does not match expected");

--  begin read only
   end Test_2_Multiply;
--  end read only


--  begin read only
   procedure Test_1_Multiply (Gnattest_T : in out Test_Object);
   procedure Test_Multiply_28f591 (Gnattest_T : in out Test_Object) renames Test_1_Multiply;
--  id:2.2/28f591cae0c9c9cb/Multiply/1/0/
   procedure Test_1_Multiply (Gnattest_T : in out Test_Object) is
   --  money.ads:122:4:"*"
--  end read only

      pragma Unreferenced (Gnattest_T);
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
        (Condition => Money.Franc (25) = Money.Franc (5) * 5,
         Message   => "Test #4 - Multiplied Franc does not match expected");
      
      AUnit.Assertions.Assert
        (Condition => Money.Dollar (25) = Money.Dollar (5) * 5,
         Message   => "Test #5 - Multiplied Dollar does not match expected");

--  begin read only
   end Test_1_Multiply;
--  end read only


--  begin read only
   procedure Test_Get_Currency (Gnattest_T : in out Test_Object);
   procedure Test_Get_Currency_a7cae9 (Gnattest_T : in out Test_Object) renames Test_Get_Currency;
--  id:2.2/a7cae9ceed008bec/Get_Currency/1/0/
   procedure Test_Get_Currency (Gnattest_T : in out Test_Object) is
   --  money.ads:134:4:Get_Currency
--  end read only

      pragma Unreferenced (Gnattest_T);
      
      use type Money_Types.Currency_Type;

   begin

      AUnit.Assertions.Assert
        (Condition => Money.Make (1).Get_Currency = None,
         Message   => "Test #1 - money currency is not None");
      
      AUnit.Assertions.Assert
        (Condition => Money.Franc (1).Get_Currency = CHF,
         Message   => "Test #2 - franc currency is not CHF");
      
      AUnit.Assertions.Assert
        (Condition => Money.Dollar (1).Get_Currency = USD,
         Message   => "Test #3 - dollar currency is not USD");

--  begin read only
   end Test_Get_Currency;
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
