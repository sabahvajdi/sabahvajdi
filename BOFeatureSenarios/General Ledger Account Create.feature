Feature: Create a New General Ledger Account

  Scenario: User clicks on "New Account" button to create a new General Ledger account
    Given I am a User in the accounting system
    And I am on the main accounting menu
    When I click on the "General Ledger" sub-menu
    And then click on the "New Account" button
    Then a modal named "General Ledger Account" with the following details should be displayed:

      | Field Name      | Default Values for Display | Data Type | Description                                                 
      | Code *          | -                         | Int        | Must be a 3-digit number (assigned by the stock exchange)
      | Title *         | -                         | Nvarchar   |           
      
  Scenario: Required fields are not filled, and the "Save" button is clicked
    Given I am a User in the accounting system
    And I am on the "New General Ledger Account" modal
    When I click the "Save" button without entering the account code
    Then the system should display the message "Please enter the General Ledger account code!"
    And the account should not be saved

    When I enter the account code but do not enter the account title
    And click the "Save" button
    Then the system should display the message "Please enter the General Ledger account title!"
    And the account should not be saved

  Scenario: Required fields filled, and "Cancel"  button is clicked
    Given I am a user in the accounting system
    And I am on the "New General Ledger Account" modal
    When I filled required feilds 
    And click on "Cancel" button
    Then the system should not save new account
    And the modal must be closed without any changes and message
  

  Scenario: Duplicate account code is entered, and the "Save" button is clicked
    Given I am a User in the accounting system
    And I am on the "New General Ledger Account" modal
    When I enter a duplicate account code
    And click the "Save" button
    Then the system should display the message "The General Ledger account code is already taken!"
    And the account should not be saved

  Scenario: Account group is not selected, and the "Save" button is clicked
    Given I am a User in the accounting system
    And I am on the "New General Ledger Account" modal
    When I enter a valid account code, account title, and leave the account group unselected
    And click the "Save" button
    Then the system should display the message "Account Group not found in the system!"
    And the account should not be saved

  Scenario: Account nature is not selected, and the "Save" button is clicked
    Given I am a User in the accounting system
    And I am on the "New General Ledger Account" modal
    When I enter a valid account code, account title, select the account group, and leave the account nature unselected
    And click the "Save" button
    Then the system should display the message "Account Nature not found in the system!"
    And the account should not be saved

  Scenario: All required fields are filled, and the "Save" button is clicked
    Given I am a User in the accounting system
    And I am on the "New General Ledger Account" modal
    When I enter a valid account code, account title, select the account group, and select the account nature
    And click the "Save" button
    Then the system should display the message "The information has been saved successfully."
    And the account should be saved successfully

  Scenario: User clicks the "Cancel" button on the modal
    Given I am a User in the accounting system
    And I am on the "New General Ledger Account" modal
    When I click the "Cancel" button
    Then the modal should be closed, and no action should be taken

