Feature: Web table user order feature


  Scenario: User should be able to place order and order seen in web table
    Given user is already logged in and on order page
    When user selects product type "Familybea"
    And user enters quantity 2
    And user enters customer name "Sherlock Holmes"
    And user enters street "221B Baker Street"
    And user enters city "London"
    And user enters state "England"
    And user enters zipcode "50505"
    And user selects credit card type "american express"
    And user enters credit card number "1111222233334444"
    And user enters expiry date "12/23"
    And user enters process order button
    Then user should see "Sherlock Holmes" in first row of the web table


  Scenario Template: User should be able to place order and order seen in web table
    Given user is already logged in and on order page
    When user selects product type "<productType>"
    And user enters quantity <quantity>
    And user enters customer name "<customerName>"
    And user enters street "<street>"
    And user enters city "<city>"
    And user enters state "<State>"
    And user enters zipcode "<Zipcode>"
    And user selects credit card type "<cardType>"
    And user enters credit card number "<cardNumber>"
    And user enters expiry date "<expDate>"
    And user enters process order button
    Then user should see "<expectedName>" in first row of the web table

    @femaleScientists
    Examples: Famous female scientists
      | productType | quantity | customerName       | street    | city   | State   | Zipcode | cardType | cardNumber      | expDate | expectedName       |
      | MoneyCog    | 2        | Marie Curie        | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | Marie Curie        |
      | Familybea   | 3        | Rosalind Franklin  | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | Rosalind Franklin  |
      | Screenable  | 4        | Chien-Shiung Wu    | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | Chien-Shiung Wu    |
      | MoneyCog    | 5        | Barbara McClintock | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | Barbara McClintock |
      | MoneyCog    | 6        | List Meitner       | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | List Meitner       |

    @maleScientists
    Examples: Famous male scientists
      | productType | quantity | customerName          | street    | city   | State   | Zipcode | cardType | cardNumber      | expDate | expectedName          |
      | MoneyCog    | 2        | Charles Darwin        | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | Charles Darwin        |
      | Familybea   | 3        | CV Raman              | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | CV Raman              |
      | Screenable  | 4        | Isaac Newton          | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | Isaac Newton          |
      | MoneyCog    | 5        | Arnold Schwarzenegger | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | Arnold Schwarzenegger |
      | MoneyCog    | 6        | Galileo               | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | Galileo               |
      | MoneyCog    | 7        | Albert Einstein       | London St | London | England | 50505   | Visa     | 111122233455666 | 12/24   | Albert Einstein       |