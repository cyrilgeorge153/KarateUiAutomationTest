Feature: swag labs home page ui test cases

  Background:
#    Given configure driver = { type: 'chromedriver', executable: 'src/test/java/examples/users/chromedriver.exe', showDriverLog: false}
#    Given configure driver = { type: 'geckodriver', executable: 'src/test/java/examples/users/geckodriver.exe', showDriverLog: false}
    * call read('/preconditions/common.feature')

  Scenario: swag labs home page heading display test
    Then waitFor('.title')
    And match exists('.title') == true
    And match text('.title') == 'Products'

  Scenario: swag labs home page cart display test
    Given waitFor('.shopping_cart_link')
    And match exists('.shopping_cart_link') == true