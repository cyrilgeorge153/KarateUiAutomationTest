Feature: swag labs login page ui test cases

  Background:
    * call read('/preconditions/browser.feature')

  Scenario: swag labs login button display test
    And waitFor('#login-button')
    Then match exists('#login-button') == true

  Scenario: swag labs logo display test
    And waitFor('.login_logo')
    Then match exists('.login_logo') == true