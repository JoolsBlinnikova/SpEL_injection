package injection;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.expression.Expression;
import org.springframework.expression.ExpressionParser;
import org.springframework.expression.spel.standard.SpelExpressionParser;

/**
 * Main class
 *
 * @author Jools
 * @version 1.0
 */
@SpringBootApplication
public class SpringBootAppConfig {
    public static void main(String[] args) {
        SpringApplication.run(SpringBootAppConfig.class, args);
    }
}