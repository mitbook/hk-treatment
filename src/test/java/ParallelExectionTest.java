import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.BeforeClass;
import org.junit.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.junit.Assert.assertTrue;

//重要提示：并行测试执行不能使用标注：@RunWith(Karate.class) !
@KarateOptions(tags = {"~@ignore"})
public class ParallelExectionTest {
    
    @BeforeClass
    public static void beforeClass() throws Exception {
        System.setProperty("karate.env", "test"); // 如果其他用例有对karate.env的改变,则需要重新设置 (e.g. mock)
        //        System.setProperty("karate.env", "pre"); // 如果其他用例有对karate.env的改变,则需要重新设置 (e.g. mock)
        //        System.setProperty("karate.env", "testAuto"); // 如果其他用例有对karate.env的改变,则需要重新设置 (e.g. mock)
    }
    
    @Test
    public void testParallel() {
        Results results = Runner.parallel(getClass(), 20, "target/zlAutoReports");
        generateReport(results.getReportDir());
    }
    
    public static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "hk-treatment");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }
}
