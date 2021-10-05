#@ignore
Feature: browser invocation

  Scenario: browser invocation common steps
#    Given configure driver = { type: 'chromedriver', executable: 'src/test/java/examples/users/chromedriver.exe', showDriverLog: false }
#    Given configure driver = { type: 'geckodriver', executable: 'src/test/java/examples/users/geckodriver.exe', showDriverLog: false}
    Given driver aut_url
    And maximize()