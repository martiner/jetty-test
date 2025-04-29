import io.restassured.RestAssured;
import jakarta.servlet.http.HttpServletResponse;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.config;
import static io.restassured.RestAssured.when;
import static io.restassured.config.RedirectConfig.redirectConfig;

public class WebIT {

	@BeforeAll
	public static void setUp() {
		RestAssured.baseURI = "http://localhost";
		RestAssured.port = Integer.getInteger("jettyPort", 8080);
		RestAssured.config = config()
				.redirect(redirectConfig().followRedirects(false))
		;
		RestAssured.enableLoggingOfRequestAndResponseIfValidationFails();
	}

	@Test
	public void shouldBeOkJsp() throws Exception {
		when()
				.get("/index.jsp")
			.then()
				.statusCode(HttpServletResponse.SC_OK)
		;
	}

	@Test
	public void shouldBeOkController() throws Exception {
		when()
				.get("/test")
			.then()
				.statusCode(HttpServletResponse.SC_OK)
		;
	}
}
