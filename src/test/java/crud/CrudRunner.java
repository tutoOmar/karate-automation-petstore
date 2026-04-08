package crud;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class CrudTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:crud")
                .outputHtmlReport(true)
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
