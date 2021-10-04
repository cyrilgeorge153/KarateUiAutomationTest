@ignore
Feature: common login steps

  Scenario: common login steps of app
  When driver 'https://www.saucedemo.com/'
  And maximize()
  And waitFor('#user-name')
  And input('input[id=user-name]', 'standard_user')
  And waitFor('#password')
  And input('input[id=password]', 'secret_sauce')
  And waitFor('#login-button')
  And click('input[id=login-button]')