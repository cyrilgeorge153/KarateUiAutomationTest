Feature: swag labs login page ui test cases

  Background:
    * call read 'locators.json'
    * call read('classpath:preconditions/browser.feature')

  Scenario: swag labs login button display test
    And waitFor(login_feature.login_button)
    And screenshot()
    Then match exists(login_feature.login_button) == true

  Scenario: swag labs logo display test
    And waitFor(login_feature.login_logo)
    And screenshot()
    Then match exists(login_feature.login_logo) == true