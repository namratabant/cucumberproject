Feature: This feature would be creating a calculator for Add and Subtract

  Scenario: To Add two numbers
    Given I have a calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario: To Sub
    Given I have a calculator
    When I sub 6 and 3
    Then I should get the result as 3

  Scenario Outline: To Add multiple numbers
    Given I have a calculator
    When I add <num1> and <num2>
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |    4 |    7 |     11 |
      |    3 |    5 |      8 |

  Scenario Outline: To Sub multiple numbers
    Given I have a calculator
    When I sub <num1> and <num2>
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |    7 |    3 |      4 |
      |    5 |    2 |      3 |

  Scenario: Add multiple numbers using cucumber data table
    Given I have a calculator
    When I add below number
      | 4 |
      | 5 |
      | 7 |
      | 8 |
    Then I should get the result as 24

  Scenario: Add multiple numbers using cucumber data table
    Given I have a calculator
    When I add below numbers using list
      |  4 |
      |  5 |
      |  7 |
      |  8 |
      | 10 |
    Then I should get the result as 34

  Scenario: To calculate the total bill of the order
    Given I have a calculator
    When I order below items
      | coffee | 23 |
      | tea    | 27 |
      | burger | 50 |
    Then I should get the result as 100

  Scenario: To calculate the total bill of the order
    Given I have a calculator
    When I order below items and quantity
      | coffee | 1 | 10 |
      | tea    | 2 | 20 |
      | burger | 3 | 30 |
    Then I should get the result as 140
      