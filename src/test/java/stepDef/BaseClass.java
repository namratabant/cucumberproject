package stepDef;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class BaseClass {

	public static WebDriver driver;
	
	
	@Before
	public void SetUp() {
		System.setProperty("webdriver.chrome.driver","D:\\chromedriver_win32 (4)\\chromedriver.exe");
		System.setProperty("webdriver.gecko.driver","geckodriver.exe");
		
	driver =new ChromeDriver(); //imp
	driver.manage().window().maximize();
    driver.manage().timeouts().implicitlyWait(5000,TimeUnit.MILLISECONDS);

		}
		
	
	@After
	public void TearDown() {
		driver.close();
		
		
	
	}
}
