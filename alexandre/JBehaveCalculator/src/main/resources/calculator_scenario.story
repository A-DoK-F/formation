Scenario: Make operation ADDITION
Given two values 15 and 7
When I make the operation ADDITION
Then The result must be 12
And the response must be SUCCESS


Scenario: Make operation SUBSTRACTION
Given two values 27 and 5
When I make the operation SUBSTRACTION
Then The result must be 22
And the response must be SUCCESS


Scenario: Make operation SUBSTRACTION
Given two values 3 and 5
When I make the operation SUBSTRACTION
Then The result must be -2
And the response must be SUCCESS


Scenario: Make operation MULTIPLICATION
Given two values 2 and 11
When I make the operation MULTIPLICATION
Then The result must be 2
And the response must be SUCCESS


Scenario: Make operation DIVISION with second operation 0
Given two values 2 and 0
When I make the operation DIVISION
Then the response must be SECOND_OPERAND_CANT_BE_ZERO


Scenario: Make operation DIVISION with first operation 0
Given two values 2 and 0
When I make the operation DIVISION
Then the response must be FIRST_OPERAND_CANT_BE_ZERO


Scenario: Make operation DIVISION with rounded case
Given two values 25 and 3
When I make the operation DIVISION
Then The result must be 8
And the response must be SUCCESS


Scenario: Make operation DIVISION with negative value
Given two values 27 and -8
When I make the operation DIVISION
Then The result must be -3
And the response must be SUCCESS



Scenario: Make operation TOTO which is UNKNOWN
Given two values 2 and 2
When I make the operation TOTO
Then the response must be UKNOWN_OPERATION
