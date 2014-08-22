var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs" , "Milk"]
//var shoppingListExplicit: [String] = ["Eggs" , "Milk"]

var shoppingList = ["Eggs","Mike"]
print("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += "Baking Powder"
shoppingList += ["Chocolate" , "Cheese" , "Butter"]
var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
//shoppingList[0...3] = ["Bananas" , "Apples"]
shoppingList

//--------------

shoppingList += ["Baking Powder"]
//shoppingList now contains 4 items

shoppingList += ["Chocolate Spread","Cheese","Butter"]
//shoppingList now contains 7 items

shoppingList.insert("Maple Syrup", atIndex: 0)
//shoppingList now contains 7 items

//"Maple Syrup" is now the first item in the list

shoppingList.append("Flour")

//shoppingList now contains 3 items, and someone is making pancakes

shoppingList += ["Baking Powder"]

firstItem = shoppingList[0]
//firstItem is equal to "Eggs"

shoppingList [4...6] = ["Bananas" , "Apples"]
//shoppingList now contains 6 items

//------------------

let apples = shoppingList.removeLast()
let mapleSyrup = shoppingList.removeAtIndex(0)

//*********************

let array: Array<Int> = [1,2,3,4]
let dictionary:Dictionary<String, Int> = ["dog": 1, "elephant": 2]

//*********************

var airports: [String: String] = ["TYO": "Tokyo", "DUB": "Dublin"]

if airports.isEmpty {
    println("The airports dictionary is empty.")
}else {
    println("The airports dictionary is not empty.")
}

//println("The airports dictionary is not empty.")

println("The airports dictionary contains \(airports.count) items.")

//println "The airports dictionary contain 2 items."

//*********************

airports ["LHR"] = "London"
//The airports dictionary now contain 3 items


airports ["LHR"] = "London Heathrow"
// the value for "LHR" has been changed to "London Heathrow"

if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("The old value for DUB was \(oldValue).")
}
// println "The old value for DUB was Dublin."

//**************************

airports ["APL"] = "Apple International"
//"Apple International" is not the areal irports for ALP, so delete it

airports ["APL"] = nil
// ALP has now been removed form the dictionary


if let removedValue = airports.removeValueForKey("DUB"){
    println("The removed airport's name is \(removedValue).")
}else {
    println("The airports dictionary does not contain a value for DUB.")
}
// println "The removed airport's name is Dublin International."
























