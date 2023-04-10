package com.cydeo.pages;

import com.cydeo.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

/**
 * IN THIS CLASS WE WILL STORE WebElements COMMON TO ALL PAGES
 */

public class BasePage {

    public BasePage(){
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "//button[.='View all orders']")
    public WebElement viewAllOrders;

    @FindBy(xpath = "//button[.='View all products']")
    public WebElement viewAllProducts;

    @FindBy(xpath = "//button[.='Order']")
    public WebElement orderButton;

    @FindBy(xpath = "//button[.='Logout']")
    public WebElement logoutButton;


}
