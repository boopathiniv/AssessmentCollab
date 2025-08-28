package runner;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run( "src/test/java/assessments/postAndGetUsers.feature",
                "src/test/java/assessments/getUser.feature");
    }
}
