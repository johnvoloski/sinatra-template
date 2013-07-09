# -*- encoding : utf-8 -*-
@vcr
Feature: Index
  Index order to retrieve information

  Scenario: When information is retrieved with success
    Given I access "/"
    Then  I should receive 200 status
    And   I should receive index json
