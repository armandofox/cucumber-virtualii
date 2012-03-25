Feature: enter and run a short BASIC program

  As a beginning programmer in the late 1970's
  So that I can get excited about CS and become a professor someday
  I want to learn BASIC by entering and running simple programs

Background: The Apple II is booted and the BASIC interpreter is activated

  Given   there is no current BASIC program

Scenario: enter and run Hello World

  When I enter the following program:
   | lines                   |
   | 10 HOME                 |
   | 20 PRINT "HELLO WORLD!" |
  And I clear the screen
  And I type "RUN"
  Then I should see "HELLO WORLD!"
 


