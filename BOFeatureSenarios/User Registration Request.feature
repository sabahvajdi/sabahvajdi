Feature: User Registration Request

Scenario: User registration request
    Given the applicant visits the following address
            ("htttps://www.rrp.brokername.information")
    When they observe the instructions for registration and other related information
    And they enter their mobile number
    Then the system verifies the entered mobile number