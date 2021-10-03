Feature: swag labs home page ui test cases

  Background:
    Given configure driver = { type: 'chrome', headless: false	}
    #Given configure proxy = 'http://my.proxy.host:50640'
    When driver 'https://www.saucedemo.com/'
    And maximize()
    And waitFor('#user-name')
    And input('input[id=user-name]', 'standard_user')
    And waitFor('#password')
    And input('input[id=password]', 'secret_sauce')
    And waitFor('#login-button')
    And click('input[id=login-button]')

  Scenario: swag labs home page heading display test
    Then waitFor('.title')
    And match exists('.title') == true
    And match text('.title') == 'Products'

  Scenario: swag labs home page cart display test
    Given waitFor('.shopping_cart_link')
    And match exists('.shopping_cart_link') == true