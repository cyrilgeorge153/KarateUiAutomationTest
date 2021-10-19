#@ignore
Feature: common login steps

  Background:
    * call read 'locators.json'

  Scenario: common login steps of app
    When driver aut_url
    And maximize()
    And waitFor(login_feature.login_username)
    And input(login_feature.login_username,username)
    And waitFor(login_feature.login_password)
    And input(login_feature.login_password, password)
    And waitFor(login_feature.login_button)
    And screenshot()
    And click(login_feature.login_button)