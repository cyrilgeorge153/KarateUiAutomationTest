Feature: swag labs login page ui test cases

  Background:
    * call read('/preconditions/browser.feature')
    * call read 'locators.json'
  Scenario: swag labs login button display test
    And waitFor(login_feature.login_button)
    Then match exists(login_feature.login_button) == true

  Scenario: swag labs logo display test
    And waitFor(login_feature.login_logo)
    Then match exists(login_feature.login_logo) == true