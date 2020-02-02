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
   procedure Test_Make_890bb4 (Gnattest_T : in out Test_Object) renames Test_Make;
--  id:2.2/890bb461bac378cb/Make/1/0/
   procedure Test_Make (Gnattest_T : in out Test_Object) is
   --  dollar.ads:11:4:Make
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      declare
         Two      : constant Dollar.Object := Dollar.Make (Amount => 2);
         Expected : constant String := "$2";
      begin

         AUnit.Assertions.Assert
           (Actual   => Two.Image,
            Expected => Expected,
            Message  => "Test #1 - Constructed dollar does not match expected");

      end;

      declare
         Five     : constant Dollar.Object := Dollar.Make (Amount => 5);
         Expected : constant String := "$5";
      begin
         AUnit.Assertions.Assert
           (Actual   => Five.Image,
            Expected => Expected,
            Message  => "Test #2 - Constructed dollar does not match expected");
      end;

      declare
         One_Hundred : constant Dollar.Object := Dollar.Make (Amount => 100);
         Expected    : constant String := "$100";
      begin
         AUnit.Assertions.Assert
           (Actual   => One_Hundred.Image,
            Expected => Expected,
            Message  => "Test #3 - Constructed dollar does not match expected");
      end;

--  begin read only
   end Test_Make;
--  end read only


--  begin read only
   procedure Test_Image (Gnattest_T : in out Test_Object);
   procedure Test_Image_dca781 (Gnattest_T : in out Test_Object) renames Test_Image;
--  id:2.2/dca781243850f32c/Image/1/0/
   procedure Test_Image (Gnattest_T : in out Test_Object) is
   --  dollar.ads:21:4:Image
--  end read only

      pragma Unreferenced (Gnattest_T);

   begin

      declare
         Twenty   : constant Dollar.Object := Dollar.Make (Amount => 20);
         Expected : constant String := "$20";
      begin

         AUnit.Assertions.Assert
           (Actual   => Twenty.Image,
            Expected => Expected,
            Message  => "Test #1 - image does not match expected");

      end;

      declare
         Five_Hundred : constant Dollar.Object := Dollar.Make (Amount => 500);
         Expected     : constant String := "$500";
      begin
         AUnit.Assertions.Assert
           (Actual   => Five_Hundred.Image,
            Expected => Expected,
            Message  => "Test #2 - image does not match expected");
      end;

      declare
         One_Thousand : constant Dollar.Object := Dollar.Make (Amount => 1000);
         Expected     : constant String := "$1000";
      begin
         AUnit.Assertions.Assert
           (Actual   => One_Thousand.Image,
            Expected => Expected,
            Message  => "Test #3 - image does not match expected");
      end;

--  begin read only
   end Test_Image;
--  end read only


--  begin read only
   procedure Test_Times (Gnattest_T : in out Test_Object);
   procedure Test_Times_d80507 (Gnattest_T : in out Test_Object) renames Test_Times;
--  id:2.2/d805070fe6ae8950/Times/1/0/
   procedure Test_Times (Gnattest_T : in out Test_Object) is
   --  dollar.ads:32:4:Times
--  end read only

      pragma Unreferenced (Gnattest_T);

      Five : constant Dollar.Object := Dollar.Make (Amount => 5);

      Expected_One   : String := "$10";
      Expected_Two   : String := "$25";
      Expected_Three : String := "$30";

   begin

      declare
         Product : constant Dollar.Object := Five.Times (Multiplier => 2);
      begin

         AUnit.Assertions.Assert
           (Actual   => Product.Image,
            Expected => Expected_One,
            Message  => "Test #1 - Multiplied dollar does not match expected");

      end;

      declare
         Product : constant Dollar.Object := Five.Times (Multiplier => 5);
      begin
         AUnit.Assertions.Assert
           (Actual   => Product.Image,
            Expected => Expected_Two,
            Message  => "Test #2 - Multiplied dollar does not match expected");
      end;

      declare
         Product : constant Dollar.Object := Five.Times (Multiplier => 6);
      begin
         AUnit.Assertions.Assert
           (Actual   => Product.Image,
            Expected => Expected_Three,
            Message  => "Test #3 - Multiplied dollar does not match expected");
      end;

--  begin read only
   end Test_Times;
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
