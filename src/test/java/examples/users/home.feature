Feature: swag labs home page ui test cases

  Background:
#    Given configure driver = { type: 'chromedriver', executable: 'src/test/java/examples/users/chromedriver.exe', showDriverLog: false}
#    Given configure driver = { type: 'geckodriver', executable: 'src/test/java/examples/users/geckodriver.exe', showDriverLog: false}
    * call read('/preconditions/common.feature')

  Scenario: swag labs home page heading display test
    Then waitFor(home_feature.home_title)
    And match exists(home_feature.home_title) == true
    And match text(home_feature.home_title) == 'Products'

  Scenario: swag labs home page cart display test
    Given waitFor(home_feature.home_shopping_cart_link)
    And match exists(home_feature.home_shopping_cart_link) == true