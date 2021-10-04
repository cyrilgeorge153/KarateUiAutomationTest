@ignore
Feature: common login steps

  Background:
    * call read 'locators.json'

  Scenario: common login steps of app
    When driver 'https://www.saucedemo.com/'
    And maximize()
    And waitFor(login_feature.login_username)
    And input(login_feature.login_username,'standard_user')
    And waitFor(login_feature.login_password)
    And input(login_feature.login_password, 'secret_sauce')
    And waitFor(login_feature.login_button)
    And click(login_feature.login_button)