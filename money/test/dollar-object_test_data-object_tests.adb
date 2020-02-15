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
   procedure Test_Make_fbb4cd (Gnattest_T : in out Test_Object) renames Test_Make;
--  id:2.2/fbb4cd694ac362f2/Make/1/0/
   procedure Test_Make (Gnattest_T : in out Test_Object) is
   --  dollar.ads:13:4:Make
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (1) = Dollar.Make (1),
         Message   => "Test #1 - Constructed Dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (2) = Dollar.Make (2),
         Message   => "Test #2 - Constructed Dollar does not match expected");

      AUnit.Assertions.Assert
        (Condition => Dollar.Make (100) = Dollar.Make (100),
         Message   => "Test #3 - Constructed Dollar does not match expected");

--  begin read only
   end Test_Make;
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
