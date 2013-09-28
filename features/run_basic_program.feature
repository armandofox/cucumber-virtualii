Feature: enter and run a short BASIC program

  As a beginning programmer in the late 1970's
  So that I can get excited about CS and become a professor someday
  I want to learn BASIC by entering and running simple programs

Background: The Apple II is booted and the BASIC interpreter is activated

  Given there is no current BASIC program

Scenario: enter and run Hello World

  When I enter the following program:
   | lines                   |
   | 10 HOME                 |
   | 20 PRINT "HELLO WORLD!" |
  And I clear the screen
  And I type "RUN"
  Then I should see "HELLO WORLD!"
 
Scenario: enter and run a Fibonacci program

  When I enter the following program:
   | lines                                   |
   | 10 INPUT "COMPUTE FIBONACCI NUMBER "; F |
   | 20 N1 = 1 : N2 = 1                      |
   | 30 FOR I = F TO 3 STEP -1               |
   | 40 T = N2                               |
   | 50 N2 = N2 + N1                         |
   | 60 N1 = T                               |
   | 70 NEXT I                               |
   | 80 PRINT "RESULT IS "; N2               |
  And I type "RUN"
  Then I should see "COMPUTE FIBONACCI NUMBER"
  When I type "6"
  Then I should see "RESULT IS 8"
