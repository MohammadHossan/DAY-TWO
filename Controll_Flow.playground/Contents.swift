import UIKit


// For Loop
let names = ["Anna","Alex","Brian","Jack"]

for name in names {
    print ("Hello ,\(name) !")
}

// Dictionary key and value

let numberOfLegs = ["spider": 8 , "ant": 6 , "cat" : 4]
for (animalName, legCount) in numberOfLegs{
    print("\(animalName)s have \(legCount) legs")
}

for index in 1...6 {
    print("\(index) time 6 is \(index * 6)")
}

// For loop without constant
let base = 3
let power  = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")


// tick mark with 60 min

let minutes = 60
for tickMark in 0..<minutes{
    // render the tick mark each minute (60 times)
}
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    // render the tick mark every 5 minutes (0, 5, 10, 15 ... 45, 50, 55)
}
let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    // render the tick mark every 3 hours (3, 6, 9, 12)
}

// while loop

// program to display numbers from 1 to 5

// initialize the variable
var i = 1, n = 5

// while loop from i = 1 to 5
while (i <= n) {
  print(i)
   i = i + 1
}

var currentLevel:Int = 0, finalLevel:Int = 5
let gameCompleted = true
while (currentLevel <= finalLevel) {

  if gameCompleted {
    print("You have passed level \(currentLevel)")
      currentLevel += 1
  }
}
print("Level Ends")

// repeat loop
// program to display numbers

var j = 1, k = 5

// repeat...while loop from 1 to 5
repeat {
  
  print(j)

  j = j + 1

} while (j <= k)

// if statements

var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
}

temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// Prints "It's not that cold. Wear a t-shirt."

// Switch statement
let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
// Prints "The last letter of the alphabet"
// interval Matching

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount : String

switch approximateCount{
case 0:
    naturalCount = "no"
case 1..<5 :
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "doznes of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

// Tuples

let somePoint = (1,1)
switch somePoint{
case (0,0):
    print("\(somePoint) is at the origin")
case (_,0):
    print("\(somePoint) is on the x-axis")
case(0,_):
     print("\(somePoint) is on the y-axis")
case (-2...2 , -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
            
}
// Value Bindings
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}
// Prints "on the x-axis with an x value of 2"

// Switch with where value

let yetAnotherPoint = (1,-1)
switch yetAnotherPoint{
case let (x,y) where x==y:
    print("(\(x) , \(y) is on the line x == y" )
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
    
}
// Compound Cases

let someCharacter1: Character = "e"
switch someCharacter1 {
case "a", "e", "i", "o", "u":
    print("\(someCharacter1) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter1) is a consonant")
default:
    print("\(someCharacter1) isn't a vowel or a consonant")
}
//Control Transfer Statements

let puzzleInput = " great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character){
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)

let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value couldn't be found for \(numberSymbol).")
}
// Prints "The integer value of 三 is 3."
//Labeled Statements

// Guard Statement
func greet(person : [String : String]){
    guard let name = person["name"] else{
        return
    }
    print("Hello \(name)")
    
    guard let location = person["location"] else{
        print("I hope weather is nice near you.")
        return
    }
    print("I hope weather is nice in \(location)")
}
greet(person: ["name" : "John"])
greet(person: ["name": "Jane", "location": "Cupertino"])


// Checking API Availability

if #available(iOS 10, macOS 10.12, *) {
    // Use iOS 10 APIs on iOS, and use macOS 10.12 APIs on macOS
} else {
    // Fall back to earlier iOS and macOS APIs
}
