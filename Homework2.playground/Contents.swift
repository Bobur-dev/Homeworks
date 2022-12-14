import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()

 */

var firstNumber: Float = 2.34
var secondNumber: Float = 65.0
var addTwo = firstNumber + secondNumber
var doubleNumber: Double = 34.54345

let sum = Double(addTwo) + doubleNumber

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */
var numberOne = 234
var numberTwo = 212
let result = numberOne / numberTwo
let remainder = numberOne % numberTwo

 print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var MacbookPrice = 1000
var qty = 14
var totalSum: Int
if qty < 10 && qty > 5{
    MacbookPrice = 900
    totalSum = qty * MacbookPrice
 print("new: \(qty) MacBook Pro with the price of: \(MacbookPrice) EUR, will cost you: \(totalSum) Eur")
}else if qty >= 10 {
    MacbookPrice = 850
    totalSum = qty * MacbookPrice
print("new: \(qty) MacBook Pro with the price of: \(MacbookPrice) EUR, will cost you: \(totalSum) Eur")
}else{
    print("not buying")
}

/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
 var userInputAge = "33a"
var convertToInt = Int(userInputAge)
let myInt: Int

if convertToInt == nil {
    print("convertToInt doesn't contain any value")
}else{
print("convertToInt:", convertToInt!)
}
let otherString: String? = "33a"

if let String = otherString, let myInt = Int(String) {
    print("Int: \(myInt)")
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */
let currentDate = Date()
let calendar = Calendar.current

let birthDay = 6
let birthMonth = 12
let birthYear = 1995

let currentDay = 2
let currentMonth = 8
let currentYear = 2022

let daysPerMonth = 30
let monthPerYear = 12

var totalYearsFromBirth = 0
var totalMonthFromBirth = 0
var totalDaysFromBirth = 0

totalYearsFromBirth = currentYear - birthYear
totalMonthFromBirth = (totalYearsFromBirth * monthPerYear) + (currentDay - birthMonth)
totalDaysFromBirth = (totalMonthFromBirth * daysPerMonth) + (currentDay - birthDay)

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

let x = readLine()
var monthInYear = "December"

switch monthInYear{
    
case "January", "February", "March":
    print("I was bornn in the First Quarter of the year")
case "April", "May", "June":
    print("I was bornn in the Second Quarter of the year")
case "July", "August", "September":
    print("I was bornn in the Third Quarter of the year")
case "October", "November", "December":
    print("I was bornn in the Fourth Quarter of the year")
    
default:
    print("Invalid Entry: Please write in UPPER CASE")
}
