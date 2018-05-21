Script started on Fri 31 Mar 2017 01:57:25 PM EDT
ajs94@aiken:~/CS214/labs/lab07$ cat t n name_tester.adb
-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Aaron Santucci
-- Date: March 29, 2017
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is
   
   NAME_SIZE : constant Integer := 8;
   
   type Name is
   record
      MyFirst, MyMiddle, MyLast : String (1 .. NAME_SIZE);
   end record;


   aName : Name ; 


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------
     
     procedure Init(TheName : out Name ; First, Middle, Last : in String) is
     begin
	TheName.MyFirst := First;
	TheName.MyMiddle := Middle;
	TheName.MyLast := Last;
     end Init;


  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst        -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------
     
     function GetFirst(TheName : in Name) return String is
     begin
	return TheName.MyFirst;
     end GetFirst;
     
     function GetMiddle(TheName : in Name) return String is
     begin
	return TheName.MyMiddle;
     end GetMiddle;


     function GetLast(TheName : in Name) return String is
     begin
	return TheName.MyLast;
     end GetLast;


  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------
     
     function getFullName(TheName : in Name) return String is
     begin
	return TheName.MyFirst & " " & TheName.MyMiddle & " " & TheName.MyLast;
     end getFullName;
     

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------
     
     procedure Put(TheName : in Name) is
     begin
	Put_Line(GetFullName(TheName));
     end Put;


begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                    "getFullName() failed");

   Put(aName); New_line;
   Put("All tests passed!"); New_line;

end name_tester;

ajs94@aiken:~/CS214/labs/lab07$ ga natmake name_e tester.adb -gnata
gnatmake: "name_tester" up to date.
ajs94@aiken:~/CS214/labs/lab07$ ./name_tester
John     Paul     Jones   

All tests passed!
ajs94@aiken:~/CS214/labs/lab07$ exit

Script done on Fri 31 Mar 2017 01:58:00 PM EDT
