Feature: Mobile Phone Validation

Scenario: Mobile phone validation process
    Given the applicant enters their mobile number
    When the mobile number is checked for the correct format, which should be 11 digits and start with 09
    Then if the mobile number format is incorrect, the system displays a message saying "Invalid mobile number"
    Otherwise, the system sends a verification code to the entered mobile number
    
    And the applicant enters the received verification code
    Then if the entered code is correct, proceed to the next step of national code validation
    Otherwise, display a message saying "Incorrect verification code"
    
    And if the verification code is not received or expires within 120 seconds after sending, the applicant should have the option to request a resend of the code
