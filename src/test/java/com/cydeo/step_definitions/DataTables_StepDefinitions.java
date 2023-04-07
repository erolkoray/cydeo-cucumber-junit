package com.cydeo.step_definitions;

import io.cucumber.java.en.Then;

import java.util.List;

public class DataTables_StepDefinitions {

    @Then("user should see fruits I like")
    public void user_should_see_fruits_i_like(List<String> fruits) {
        // Write code here that turns the phrase above into concrete actions
        System.out.println("fruits = " + fruits.get(4));
    }

}
