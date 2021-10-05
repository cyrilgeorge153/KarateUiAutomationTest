# KarateUiAutomationTest

Karate maven ui automation project. To execute test cases use the following commands from pom.xml location.

#For parallel execution use following commands in the following  browsers

Native Chrome:`mvn clean test -Dbrowser=nativechrome -Dtest=TestRunnerParallel`

Headless Native Chrome:`mvn clean test -Dbrowser=headlessnativechrome -Dtest=TestRunnerParallel`

Chrome:`mvn clean test -Dbrowser=chrome -Dtest=TestRunnerParallel`

Headless Chrome:`mvn clean test -Dbrowser=headlesschrome -Dtest=TestRunnerParallel`

Firefox:`mvn clean test -Dbrowser=firefox -Dtest=TestRunnerParallel`

Headless firefox:`mvn clean test -Dbrowser=headlessfirefox -Dtest=TestRunnerParallel`

Report location: KarateUiAutomationTest/target/karate-reports/karate-summary.html

For sequential execution use following commands in the following  browsers

Native Chrome:`mvn clean test -Dbrowser=nativechrome -Dtest=TestRunner`

Headless Native Chrome:`mvn clean test -Dbrowser=headlessnativechrome -Dtest=TestRunner`

Chrome:`mvn clean test -Dbrowser=chrome -Dtest=TestRunner`

Headless Chrome:`mvn clean test -Dbrowser=headlesschrome -Dtest=TestRunner`

Firefox:`mvn clean test -Dbrowser=firefox -Dtest=TestRunner`

Headless firefox:`mvn clean test -Dbrowser=headlessfirefox -Dtest=TestRunner`

#Report location#: KarateUiAutomationTest/target/karate-reports/karate-summary.html

To generate cucumber reporting with parallel execution

Native Chrome:`mvn clean test -Dbrowser=nativechrome -Dtest=TestRunnerCucumberReporting`

Headless Native Chrome:`mvn clean test -Dbrowser=headlessnativechrome -Dtest=TestRunnerCucumberReporting`

Chrome:`mvn clean test -Dbrowser=chrome -Dtest=TestRunnerCucumberReporting`

Headless Chrome:`mvn clean test -Dbrowser=headlesschrome -Dtest=TestRunnerCucumberReporting`

Firefox:`mvn clean test -Dbrowser=firefox -Dtest=TestRunnerCucumberReporting`

Headless firefox:`mvn clean test -Dbrowser=headlessfirefox -Dtest=TestRunnerCucumberReporting`

#Report location#: KarateUiAutomationTest\target\cucumber-html-reports\report-feature_1407342867.html

