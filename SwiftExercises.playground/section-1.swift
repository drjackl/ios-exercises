import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    return "My favorite cheese is " + cheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4] // changed from let
// Add 5 to this array
// WORK HERE
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for i in 1...10 {
    print(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for i in 1..<10 {
    print(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:[[String : String]]) -> [String] {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var drinks = [String](count: characters.count, repeatedValue: "")
    //var drinks = [String](characters.count, "") // this doesn't work
//    for character in characters {
//        if let favDrink = character["favorite drink"] {
//            drinks.append(favDrink)
//        }
//    }
    for var i = 0; i < characters.count; i++ {
        if let favDrink = characters[i]["favorite drink"] {
            drinks[i] = favDrink
        }
    }
    return drinks//[]
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Optionals

*/

func emailFromUserDict(userDict : [String : String]) -> String {
    // Return the user's email address from userDict, or return "" if they don't have one
    
    // WORK HERE
//    return "user@example.com"
    if let email = userDict["email"] {
        return email
    } else {
        return ""
    }
}


let mostafaElSayedUser = ["name" : "Mostafa A. El-Sayed", "occupation" : "Chemical Physicist", "email" : "mael-sayed@gatech.edu", "awards" : "Langmuir Award in Chemical Physics, Arabian Nobel Prize, Ahmed Zewail prize, The Class of 1943 Distinguished Professor, 2007 US National Medal of Science", "birthday" : "8 May 1933"]

let marjorieBrowneUser = ["name" : "Marjorie Lee Browne", "occupation" : "Mathematician", "birthday" : "September 9, 1914"]


// If your emailFromUserDict function is implemented correctly, both of these should output "true":

emailFromUserDict(mostafaElSayedUser) == "mael-sayed@gatech.edu"
emailFromUserDict(marjorieBrowneUser) == ""

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
func arrayToString(array: [String]) -> String {
    var finalString = ""
    for var i = 0; i < array.count-1; i++ {
        finalString += array[i] + ";"
    }
    finalString += array[array.count-1]
    return finalString
}
arrayToString(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE
//let sortedCerealArray = cerealArray.sort()//don't need a closure
let sortedCerealArray2 = cerealArray.sort { (s1:String, s2:String) -> Bool in
    return s1 < s2
}
//let sortedCerealArray3 = sorted(cerealArray, <)//sorted deprecated it seems
let sortedCerealArray4 = cerealArray.sort(<)