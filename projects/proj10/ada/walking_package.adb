-- walking_package.adb gives walking bird-related definitions
--
-- Completed by: Aaron Santucci
-- Date: May 3, 2017
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Walking_Package is
   
   -- movement abstract method
   function Movement(A_Duck : in Walking_Type) return String is
   begin
      return "walked";
   end Movement;
   
   
   function Type_Name(A_Duck : in Walking_Type) return String is
   begin
      return "Walking";
   end Type_Name;


end Walking_Package;
