Feature: validation numbers

    Scenario Outline: valid number
        Given I access the page
        And   I text value "<number>"
        When  I click in Calculate
        Then  I recive the results "<result>"
        Examples:
            | number | result                            |
            | 10     | The factorial of 10 is: 3628800   |             
            | 200    | The factorial of 200 is: Infinity | 
            | aaa    | Please enter an integer           |