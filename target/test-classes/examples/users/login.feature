Feature: swag labs login page ui test cases

  Background:
    Given configure driver = { type: 'chrome', headless: false }
    #Given configure proxy = 'http://my.proxy.host:50640'
    When driver 'https://www.saucedemo.com/'
    And maximize()

  Scenario: swag labs login button display test
    And waitFor('#login-button')
    Then match exists('#login-button') == true

  Scenario: swag labs logo display test
    And waitFor('.login_logo')
    Then match exists('.login_logo') == true