package stepDef;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;



@RunWith(Cucumber.class)



@CucumberOptions(
	plugin= {"html:target/html-cucumber","json:target/cucumber.json"},	
features= "src/test/java/feature",
//tags = {"@F_Login"}, //to run single tags
//tags = {"@Sanity,@Regression"}, to run multiple tags
//tags = {"@Sanity or @Regression"}, to run multiple tags using or 
//tags = { " @Regression","@Rapid"}, to run multiple tags
//tags = {" @Regression and @Rapid"}, to run multiple tags using and
//tags= {"@Sanity or (@Regression and @Rapid)"},
//tags= {"@F_1234"},  //to run the single class
//tags = {"not @Sanity"}, accept sanity all other test cases areexecuted
//tags = {"@Regression and not @Ignore"}, //{~@Ignore=not@Ignore} ...ignore some senario
//tags = {"@Regression"},
tags= {"@Sanity"},
glue = {"stepDef"}


		
		)
		
		
		
public class TestRunner {

}
