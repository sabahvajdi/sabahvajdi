Scenario: User navigates to create a new Commodity Broker in the system
    Given I am a Customer Affairs Specialist
    And I am on the Customer menu
    When I select the "Commodity Brokers" sub-menu
    And I click on the "Create New" button in the Commodity Brokers list
    Then a modal with "Save" and "Cancel" options and the following details should be displayed:

      | Field Name            | Mandatory | Data Type | Description                                      |
      | Broker Type *         | Yes       | Dropdown  | Type of the brokerage market                     |
      | Broker Name *         | Yes       | Text      | Name of the brokerage                            |
      | Broker Code *         | Yes       | Text      | Brokerage code                                   |
      | Stock Exchange Code   | No        | Text      | Brokerage stock exchange code                    |
      | CEO                   | No        | Text      | CEO of the brokerage                             |
      | Registration Code     | No        | Text      | Registration code                                |
      | National ID           | No        | Text      | National ID of the brokerage                     |
      | Economic Code         | No        | Text      | Economic code of the brokerage                   |
      | Representative Name   | No        | Text      | Name of the representative                       |
      | Representative Surname| No        | Text      | Surname of the representative                    |
      | Postal Code           | No        | Text      | Postal code                                      |
      | Telephone             | No        | Text      | Telephone number                                 |
      | Fax                   | No        | Text      | Fax number                                       |
      | Address               | No        | Text      | Address of the brokerage                         |
      | Status                | No        | Dropdown  | Status of the brokerage                          |

    When I complete the modal information
    And I click on the "Save" option
    Then the entered information should be displayed at the top of the Commodity Brokers list

  Scenario: User clicks on the "Cancel" option on the modal
    Given I am a Customer Affairs Specialist
    And I am on the "Create New Commodity Broker" modal
    When I click the "Cancel" option
    Then the modal should be closed without any action
    And save nothing
    And do not display any message

  Scenario: Mandatory fields are not filled, and the "Save" option is clicked
    Given I am a Customer Affairs Specialist
    And I am on the "Create New Commodity Broker" modal
    When I click the "Save" option without filling mandatory fields
    Then the system should display the message "Please complete the mandatory fields."
    And the information should not be saved