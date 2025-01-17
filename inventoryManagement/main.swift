//
//  main.swift
//  inventoryManagement
//
//  Created by StudentPM on 1/10/25.
//

import Foundation

print("Hello, World!")

//Variables for Cost
var totalCost: Double = 0.00
//Total cost for the user's cart
//Example for it: print("The total cost is \(totalCost) dollars.")
//Example 2: ("The total cost is " + totalCost + " dollars.")
var cerealCost: Double = 4.99
var milkCost: Double = 4.99
var syrupCost: Double = 3.99
var cupsCost: Double = 2.99

//Variables for amount of items
var storeCereal: Int = 100
var storeMilk: Int = 100
var storeSyrup: Int = 100
var storeCups: Int = 100

//Amount user has
var userCereal: Int = 0
var userMilk: Int = 0
var userSyrup: Int = 0
var userCups: Int = 0

//Access Code
var accessCode = 1029

//Checks if its the user's first time
var firstTime = true

if firstTime==true{
    startPage()
    firstTime = false
}


//FUNCTIONS-----------------------------------

func startPage(){
    //Welcoming the user--Main Screen
    print("Welcome to the Mimi's store! Let us know how we can help you (Enter number of selection):")
    //Numbers the user should choose
    print("1) Add item to cart.\n2) Remove item from cart.\n3) Check item availability in stock.\n4) Access Admin Menu.\n5) Checkout.")

    //USER INPUTS A NUMBER, IF THEY DON'T THEN WELL IT'S OVER. THEY PUT AN INVALID RESPONSE
    if let userInput = readLine(), let number = Int(userInput), number<6{
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
            adminCode()
        }
        else{
            //Checkout.
            checkOut()
        }
    }
    else{
        print("Invalid Input. Put a valid option!")
        startPage()
    }
}

func addItem(){
    //Printing the question and asking user to select
    print("What would you like to add to cart? (Enter number of selection)")
    print("1) Cereal \n2) Milk \n3) Syrup \n4) Cups")
    
    if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
        //User selection
        if numberInt == 1{
            print("How many cereal(s) would you like to add to your cart?:")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<(storeCereal+1){
                //Adding cereal
                userCereal += numberInput
                storeCereal -= numberInput
                totalCost += cerealCost * Double(numberInput)
                print("You have added " + input + " cereal(s) to your cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                //Cant go over the stock
                print("Too much!")
            }
        }
        else if numberInt == 2{
            print("How many milk(s) would you like to add to your cart?:")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<(storeMilk+1){
                //Adding milk
                userMilk += numberInput
                storeMilk -= numberInput
                totalCost += milkCost * Double(numberInput)
                print("You have added " + input + " milk(s) to your cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                //Cant go over stock
                print("Too much!")
            }
        }
        else if numberInt == 3{
            print("How many syrup(s) would you like to add to your cart?:")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<(storeSyrup+1){
                //Adding Syrup
                userSyrup += numberInput
                storeSyrup -= numberInput
                totalCost += syrupCost * Double(numberInput)
                print("You have added " + input + " syrup(s) to your cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                //Cant go over stock
                print("Too much!")
            }
        }
        else if numberInt == 4{
            print("How many cup(s) would you like to add to your cart?:")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<(storeCups+1){
                //Adding Cups
                userCups += numberInput
                storeCups -= numberInput
                totalCost += cupsCost * Double(numberInput)
                print("You have added " + input + " cup(s) to your cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                //Cant go over stock
                print("Too much!")
            }
        }
    }
    else{
        //Went over 4
        print("Invalid response")
    }
    startPage()
}

func removeItem(){
    //Printing the question and asking user to select
    print("What would you like to remove from cart? (Enter number of selection):")
    print("1) Cereal \n2) Milk \n3) Syrup \n4) Cups")
    
    if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
        if numberInt == 1{
            print("How many cereals would you like to remove?")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<userCereal{
                //Remove cereal
                storeCereal += numberInput
                userCereal -= numberInput
                totalCost -= cerealCost * Double(numberInput)
                print("Removed \(input) from the cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                //putting back more than they have
                print("You don't have that much bro!")
            }
        }
        else if numberInt == 2{
            print("How many milks would you like to remove?")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<userMilk{
                //Removing milk
                storeMilk += numberInput
                userMilk -= numberInput
                totalCost -= milkCost * Double(numberInput)
                print("Removed \(input) from the cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                //putting back more than they have
                print("You don't have that much bro!")
            }
        }
        else if numberInt == 3{
            print("How many syrups would you like to remove?")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<userSyrup{
                //Removing Syrup
                storeSyrup += numberInput
                userSyrup -= numberInput
                totalCost -= syrupCost * Double(numberInput)
                print("Removed \(input) from the cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                //putting back more than they have
                print("You don't have that much bro!")
            }
        }
        else if numberInt == 4{
            print("How many cups would you like to remove?")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<userCups{
                //Remove Cups
                storeCups += numberInput
                userCups -= numberInput
                totalCost -= cupsCost * Double(numberInput)
                print("Removed \(input) from the cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                //putting back more than they have
                print("You don't have that much bro!")
            }
        }
    }
    else{
        print("Invalid response")
    }
    startPage()
}

func checkItems(){
    
    //Initial text
    print("What item would you like to check if it's in stock? (Enter number of selection)")
    print("1) Cereal \n2) Milk \n3) Syrup \n4) Cups")
    
    //Tells how much is left of an item
    if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
        if numberInt == 1{
            print("There are \(storeCereal) cereals left.")
        }
        else if numberInt == 2{
            print("There are \(storeMilk) milks left.")
        }
        else if numberInt == 3{
            print("There are \(storeSyrup) syrups left.")
        }
        else if numberInt == 4{
            print("There are \(storeCups) cups left.")
        }
    }
    else{
        //User put in a number that isn't an option
        print("Invalid response")
    }
    
    startPage()
}

func adminCode(){
    print("Enter Admin ID (Four numbers):")
    //Asking for player input
    if let userInput = readLine(), let numberInt = Int(userInput){
        if Int(userInput) == numberInt{
            accessAdmin()
        }
        else{
            print("Wrong!")
        }
    }
    startPage()
}

func accessAdmin(){
    //got the code and now has access to the admin menu
    print("Welcome to the Admin menu! Lets us know how we can help you (Enter number of selection):")
    print("1) Restock inventory \n2) Generate report \n3) Check number of items \n4) Quit admin menu")
            
    //user chooses where they go
    if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
        if numberInt == 1{
            print("What would you like to restock? (Enter number of selection): \n1) Cereal \n2) Milk \n3) Syrup \n4) Cups")
            //Restocking and choosing which one to restock
            if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
                if numberInt == 1{
                    print("How many units of cup would you like to restock?: ")
                    
                    if let input = readLine(), let numberInput = Int(input){
                        storeCereal += numberInput
                    }
                }
                else if numberInt == 2{
                    print("How many units of cup would you like to restock?: ")
                    
                    if let input = readLine(), let numberInput = Int(input){
                        storeMilk += numberInput
                    }
                }
                else if numberInt == 3{
                    print("How many units of cup would you like to restock?: ")
                    
                    if let input = readLine(), let numberInput = Int(input){
                        storeSyrup += numberInput
                    }
                }
                else if numberInt == 4{
                    print("How many units of cup would you like to restock?: ")
                    
                    if let input = readLine(), let numberInput = Int(input){
                        storeCups += numberInput
                    }
                }
            }
            else{
                print("Try again!")
            }
            //go back to admin menu
            accessAdmin()
        }
        else if numberInt == 2{
            //Showing how many is in stock right now as a report
            print("Summary Report: \nRemaining cereals: \(storeCereal) \nRemaining milks: \(storeMilk) \nRemaining syrups: \(storeSyrup) \nRemaining cups: \(storeCups)")
            print("Remaining Inventory: \(storeCereal+storeMilk+storeSyrup+storeCups)")
            print("Total sales: \(totalCost)")
            //Back to admin menu
            accessAdmin()
        }
        else if numberInt == 3{
            //Checking individual stock
            print("What item would you like to check if it's in stock? (Enter number of selection)")
            print("1) Cereal \n2) Milk \n3) Syrup \n4) Cups")
            
            if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
                if numberInt == 1{
                    //checking cereal
                    print("There are \(storeCereal) cereals left.")
                }
                else if numberInt == 2{
                    //checking milk
                    print("There are \(storeMilk) milks left.")
                }
                else if numberInt == 3{
                    //checking syrup
                    print("There are \(storeSyrup) syrups left.")
                }
                else if numberInt == 4{
                    //checking cups
                    print("There are \(storeCups) cups left.")
                }
                else{
                    print("Invalid response")
                }
            }
            else{
                print("Invalid response")
            }
            
            accessAdmin()
        }
        else if numberInt == 4{
            //quitting admin menu
            print("Going back!")
            startPage()
        }
        else{
            print("Not an option!")
        }
    }
    else{
        print("Invalid response.")
    }
    startPage()
}

    
func checkOut(){
    var grandTotal = totalCost+(totalCost*0.0925)
    
    print("Thanks for shopping with us!\nYou purchases the following:")
    print("Cereals: \(userCereal)")
    print("Milks: \(userMilk)")
    print("Syrups: \(userSyrup)")
    print("Cups: \(userCups)")
    print("Your grand total including tax (9.25%) is: \(grandTotal)")
}
