package demo.spring.boot.prometheus;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class PrometheusDemoApplication {
    public static void main(String[] args) {
        new SpringApplicationBuilder(PrometheusDemoApplication.class).run(args);
    }
}
