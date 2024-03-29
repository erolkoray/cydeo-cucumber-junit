package com.cydeo.step_definitions;

import com.cydeo.pages.DropdownsPage;
import com.cydeo.utilities.BrowserUtils;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import java.util.ArrayList;
import java.util.List;

public class DataTables_StepDefinitions {

    DropdownsPage dropdownsPage = new DropdownsPage();

    @Then("user should see fruits I like")
    public void user_should_see_fruits_i_like(List<String> fruits) {
        // Write code here that turns the phrase above into concrete actions
        System.out.println("fruits = " + fruits.get(4));
    }

    @Given("User is on the dropdowns page of practice tool")
    public void userIsOnTheDropdownsPageOfPracticeTool() {
        Driver.getDriver().get("https://practice.cydeo.com/dropdown");
    }

    @Then("User should see below info in month dropdown")
    public void userShouldSeeBelowInfoInMonthDropdown(List<String> expectedMonths) {

        //This method will return us the 'List of String' of given dropdowns' options
       List<String> actualMonths = BrowserUtils.dropdownOptionsAsString(dropdownsPage.monthDropdown);

        Assert.assertEquals(expectedMonths, actualMonths);
            //Assert will check the size of the lists first.
        // if it is matching it will check the content 1 by 1 to see it's same.




    }
}
