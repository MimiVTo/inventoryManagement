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

startPage()

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
    print("What would you like to add to cart? (Enter number of selection)")
    print("1) Cereal \n2) Milk \n3) Syrup \n4) Cups")
    
    if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
        if numberInt == 1{
            print("How many cereal(s) would you like to add to your cart?:")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<(storeCereal+1){
                
                userCereal += numberInput
                storeCereal -= numberInput
                totalCost += cerealCost * Double(numberInput)
                print("You have added " + input + " cereal(s) to your cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                print("Too much!")
            }
        }
        if numberInt == 2{
            print("How many milk(s) would you like to add to your cart?:")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<(storeMilk+1){
                
                userMilk += numberInput
                storeMilk -= numberInput
                totalCost += milkCost * Double(numberInput)
                print("You have added " + input + " milk(s) to your cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                print("Too much!")
            }
        }
        if numberInt == 3{
            print("How many syrup(s) would you like to add to your cart?:")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<(storeSyrup+1){
                
                userSyrup += numberInput
                storeSyrup -= numberInput
                totalCost += syrupCost * Double(numberInput)
                print("You have added " + input + " syrup(s) to your cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                print("Too much!")
            }
        }
        if numberInt == 4{
            print("How many cup(s) would you like to add to your cart?:")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<(storeCups+1){
                
                userCups += numberInput
                storeCups -= numberInput
                totalCost += cupsCost * Double(numberInput)
                print("You have added " + input + " cup(s) to your cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                print("Too much!")
            }
        }
    }
    else{
        print("Invalid response")
    }
    
    startPage()
}

func removeItem(){
    print("What would you like to remove from cart? (Enter number of selection):")
    print("1) Cereal \n2) Milk \n3) Syrup \n4) Cups")
    
    if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
        if numberInt == 1{
            print("How many cereals would you like to remove?")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<userCereal{
                
                storeCereal += numberInput
                userCereal -= numberInput
                totalCost -= cerealCost * Double(numberInput)
                print("Removed \(input) from the cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                print("You don't have that much bro!")
            }
        }
        if numberInt == 2{
            print("How many milks would you like to remove?")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<userMilk{
                
                storeMilk += numberInput
                userMilk -= numberInput
                totalCost -= milkCost * Double(numberInput)
                print("Removed \(input) from the cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                print("You don't have that much bro!")
            }
        }
        if numberInt == 3{
            print("How many syrups would you like to remove?")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<userSyrup{
                
                storeSyrup += numberInput
                userSyrup -= numberInput
                totalCost -= syrupCost * Double(numberInput)
                print("Removed \(input) from the cart.")
                print("Your total is $\(totalCost)")
            }
            else{
                print("You don't have that much bro!")
            }
        }
        if numberInt == 4{
            print("How many cups would you like to remove?")
            
            if let input = readLine(), let numberInput = Int(input), numberInput<userCups{
                
                storeCups += numberInput
                userCups -= numberInput
                totalCost -= cupsCost * Double(numberInput)
                print("Removed \(input) from the cart.")
                print("Your total is $\(totalCost)")
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
    
    if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
        if numberInt == 1{
            print("There are \(storeCereal) cereals left.")
        }
        if numberInt == 2{
            print("There are \(storeMilk) milks left.")
        }
        if numberInt == 3{
            print("There are \(storeSyrup) syrups left.")
        }
        if numberInt == 4{
            print("There are \(storeCups) cups left.")
        }
        else{
            print("Invalid response")
        }
    }
    else{
        print("Invalid response")
    }
    
    startPage()
}

func adminCode(){
    print("Enter Admin ID (Four numbers):")
    
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
    print("Welcome to the Admin menu! Lets us know how we can help you (Enter number of selection):")
    print("1) Restock inventory \n2) Generate report \n3) Check number of items \n4) Quit admin menu")
            
    if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
        if numberInt == 1{
            print("What would you like to restock? (Enter number of selection): \n1) Cereal \n2) Milk \n3) Syrup \n4) Cups")
            
            if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
                if numberInt == 1{
                    print("How many units of cup would you like to restock?: ")
                    
                    if let input = readLine(), let numberInput = Int(input){
                        storeCereal += numberInput
                    }
                }
                if numberInt == 2{
                    print("How many units of cup would you like to restock?: ")
                    
                    if let input = readLine(), let numberInput = Int(input){
                        storeMilk += numberInput
                    }
                }
                if numberInt == 3{
                    print("How many units of cup would you like to restock?: ")
                    
                    if let input = readLine(), let numberInput = Int(input){
                        storeSyrup += numberInput
                    }
                }
                if numberInt == 4{
                    print("How many units of cup would you like to restock?: ")
                    
                    if let input = readLine(), let numberInput = Int(input){
                        storeCups += numberInput
                    }
                }
            }
            else{
                print("Try again!")
            }
            accessAdmin()
        }
        if numberInt == 2{
            print("Summary Report: \nRemaining cereals: \(storeCereal) \nRemaining milks: \(storeMilk) \nRemaining syrups: \(storeSyrup) \nRemaining cups: \(storeCups)")
            print("Remaining Inventory: \(storeCereal+storeMilk+storeSyrup+storeCups)")
            print("Total sales: \(totalCost)")
            
            accessAdmin()
        }
        if numberInt == 3{
            print("What item would you like to check if it's in stock? (Enter number of selection)")
            print("1) Cereal \n2) Milk \n3) Syrup \n4) Cups")
            
            if let userInput = readLine(), let numberInt = Int(userInput), numberInt<5{
                if numberInt == 1{
                    print("There are \(storeCereal) cereals left.")
                }
                if numberInt == 2{
                    print("There are \(storeMilk) milks left.")
                }
                if numberInt == 3{
                    print("There are \(storeSyrup) syrups left.")
                }
                if numberInt == 4{
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
        if numberInt == 4{
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
    print("Thanks for shopping with us!\nYou purchases the following:")
    print("Cereals: \(userCereal)")
    print("Milks: \(userMilk)")
    print("Syrups: \(userSyrup)")
    print("Cups: \(userCups)")
        
    print("Your grand total including tax (9.25%) is: \(totalCost+(totalCost*0.0925))")
}
