Feature: Validating the factorial math
    As a user,
    I want to use the online calculator to calculate the factorial of a number
    So that I don't need to do the math myself
    
    Scenario Outline: Validating the factorial math
        Given I visit The greatest factorial calculator website
        And   I enter with the value "<number>"
        When  I click on Calculate button
        Then  I should see the following outcome "<result>"
        Examples:
            | number | result                            |
            | 10     | The factorial of 10 is: 3628800   |             
            | 200    | The factorial of 200 is: Infinity | 
            | aaa    | Please enter an integer           |