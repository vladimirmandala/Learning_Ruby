Feature: Summing numbers
  In order to understand the gherkin syntax
  As someone new to cucumber
  I want a simple example
 
  Scenario: Summing three positive numbers
    Given the first number is 1
    And the second number is 2
    And the third number is 3
    When I sum the numbers
    Then the answer is 3