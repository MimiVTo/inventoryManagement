//
//  main.swift
//  inventoryManagement
//
//  Created by StudentPM on 1/10/25.
//

import Foundation

print("Hello, World!")

//Variables for Cost
var totalCost: Double = 0.00;
//Total cost for the user's cart
//Example for it: print("The total cost is \(totalCost) dollars.")
//Example 2: ("The total cost is " + totalCost + " dollars.")

//Welcoming the user--Main Screen
print("Welcome to the Mimi's store! Let us know how we can help you (Enter number of selection):")
//Numbers the user should choose
print("1) Add item to cart.")
print("2) Remove item from cart.")
print("3) Check item availability in stock.")
print("4) Access Admin Menu.")
print("5) Checkout.")

//USER INPUTS A NUMBER, IF THEY DON'T THEN WELL IT'S OVER. THEY PUT AN INVALID RESPONSE
if var userInput = readLine(), var number = Int(userInput), number<6{
    print("You have chosen " + userInput)
    
    //Checks what number the user inputted and directs them to the function
    
    if number == 1{
        //Add item to cart.
        addItem()
    }
    else if number == 2{
        //Remove item from cart.
        removeItem()
    }
    else if number == 3{
        //Check item availability in stock.
        checkItems()
    }
    else if number == 4{
        //Access Admin Menu.
        accessAdmin()
    }
    else{
        //Checkout.
        checkOut()
    }
}
else{
    print("Invalid Input.")
}

//FUNCTIONS-----------------------------------

func addItem(){
    
}

func removeItem(){
    
}

func checkItems(){
    
}

func accessAdmin(){
    
}

func checkOut(){
    
}
