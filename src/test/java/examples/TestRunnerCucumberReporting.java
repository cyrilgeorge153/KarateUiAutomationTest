package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import java.awt.*;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import static org.junit.Assert.*;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Test;

public class TestRunnerCucumberReporting {
    @Test
    public void testParallel() {
        Results results = Runner.path("classpath:examples/users")
                .outputCucumberJson(true)
                .parallel(4);
        generateReport(results.getReportDir());
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }

    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "swaglabs");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
    @AfterAll
    public static void tearDown() {
        try {
            Desktop.getDesktop()
                    .browse(new File("target/cucumber-html-reports/report-feature_1407342867.html").toURI());
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
