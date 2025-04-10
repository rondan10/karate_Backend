package karate.runner;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    @Karate.Test
    Karate runAllTest() {
        return Karate.run("classpath:resources/features").relativeTo(getClass());
    }

}
