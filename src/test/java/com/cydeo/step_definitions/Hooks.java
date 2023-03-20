package com.cydeo.step_definitions;

/*
In this class we will be able to pass pre & post conditions to each scenario and each step
 */

import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks {

    @Before
    public void setupScenario(){
        System.out.println("=====SETTING UP BROWSER USING CUCUMBER @Before ======");

    }


    @After
    public void teardownScenario(){
        System.out.println("=====CLOSING BROWSER USING CUCUMBER @After ======");
    }


}
