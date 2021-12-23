# KarateUiAutomationTest

Karate maven ui automation project. To execute test cases use the following commands from pom.xml location.

# For parallel execution use following commands in the following  browsers

Chrome:`mvn clean test -Dbrowser=chrome -Dtest=TestRunnerParallel`

Headless Chrome:`mvn clean test -Dbrowser=headlesschrome -Dtest=TestRunnerParallel`

Firefox:`mvn clean test -Dbrowser=firefox -Dtest=TestRunnerParallel`

Headless firefox:`mvn clean test -Dbrowser=headlessfirefox -Dtest=TestRunnerParallel`

# For sequential execution use following commands in the following  browsers

Chrome:`mvn clean test -Dbrowser=chrome -Dtest=TestRunner`

Headless Chrome:`mvn clean test -Dbrowser=headlesschrome -Dtest=TestRunner`

Firefox:`mvn clean test -Dbrowser=firefox -Dtest=TestRunner`

Headless firefox:`mvn clean test -Dbrowser=headlessfirefox -Dtest=TestRunner`

# Html Report location#:KarateUiAutomationTest/target/karate-reports/karate-summary.html

To generate cucumber reporting with parallel execution use following commands

Chrome:`mvn clean test -Dbrowser=chrome -Dtest=TestRunnerCucumberReporting`

Headless Chrome:`mvn clean test -Dbrowser=headlesschrome -Dtest=TestRunnerCucumberReporting`

Firefox:`mvn clean test -Dbrowser=firefox -Dtest=TestRunnerCucumberReporting`

Headless firefox:`mvn clean test -Dbrowser=headlessfirefox -Dtest=TestRunnerCucumberReporting`

# Cucumber Report location:KarateUiAutomationTest\target\cucumber-html-reports\overview-features.html

**Test execution gif->** ![KarateUiAutomationTest gif](https://user-images.githubusercontent.com/52770689/137847569-301c5a4f-21bf-46ec-9277-1ec4d768035e.gif)

# Prerequisites

1.Java 8/+ should be present and environment variable should be set in the local system.

2.Maven should be present and environment variable should be set in the local system.

3.All browsers mentioned above should be present in the local system.

