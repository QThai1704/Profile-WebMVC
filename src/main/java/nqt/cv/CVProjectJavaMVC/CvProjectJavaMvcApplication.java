package nqt.cv.CVProjectJavaMVC;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;

@SpringBootApplication(exclude = { SecurityAutoConfiguration.class })
public class CvProjectJavaMvcApplication {

	public static void main(String[] args) {
		SpringApplication.run(CvProjectJavaMvcApplication.class, args);
	}

}
