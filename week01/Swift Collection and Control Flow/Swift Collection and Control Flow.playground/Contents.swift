//: Playground - noun: a place where people can play

import UIKit

/*---------------------
         Array
 ----------------------*/

//Q1
var myFriends = [String]()


//Q2
myFriends.append("Ian")
myFriends.append(contentsOf: ["Bomi","Kevin"])

//Q3
myFriends.insert("Michael",at: 3)

//Q4
myFriends.swapAt(2, 0)

//Q5
myFriends.forEach { friend in
    print(friend)
}

//Q6
/*
 myFriends[5] CRASH ! Beacuase index start from zero. Do not user an index value that equals   number of item in the array.
*/

/*---------------------
        Dictionary
 ----------------------*/

//Q1
var myCountryNumber:[String:Int] = [:]

//Q2
myCountryNumber = ["US":1, "GB":44, "JP":81]

//Q3
myCountryNumber.removeValue(forKey: "US")
myCountryNumber

//Q 4
myCountryNumber.updateValue(0, forKey: "GB")
myCountryNumber

//Q5
let stringArray = Array(myCountryNumber.keys)
stringArray


/*---------------------
       For, While, Repeat
 ----------------------*/

//Q1
print("---------Array---------")
for all in myFriends{
    print(all)
}
print("---------Dictionary---------")
for (country, number) in myCountryNumber {
    print("The key is'\(country)',the value is '\(number)'.")
}
//Q2
let lottoNumbers = [10, 9 , 8 , 7 , 6, 5]
for lottonumbers in lottoNumbers[3...5]{
   print(lottonumbers)
}

//Q3
print("---------inscreasing1---------")
for increasing1 in 5...10{
    print(increasing1)
}
print("---------decreasing1---------")
for i in stride(from: 10, to: 4, by: -1) {
     print(i)
}
print("---------decreasing2---------")
for i in stride(from: 10, to: 4, by: -2) {
    print(i)
}
// Q 4
print("--------while-inscreasing1---------")
var x = 6
while x <= 10 {
    print (x)
     x += 1
}
print("--------while-decreasing1---------")
var x1 = 10
while x1 >= 6 {
  print (x1)
    x1 -= 1
}
print("--------while-decreasing2---------")
var x2 = 10
while x2 >= 6 {
    print (x2)
    x2 -= 2
}
// Q5
print("------repeat--while-inscreasing1---------")
var y = 5
repeat {
    print(y)
    y += 1
} while y <= 10

print("------repeat--while-decreasing1---------")
var y1 = 10
repeat {
    print(y1)
    y1 -= 1
} while y1 >= 6

print("------repeat--while-decreasing2---------")
var y2 = 10
repeat {
    print(y2)
    y2 -= 2
} while y2 >= 6

/*--------------------
       If statement
   --------------------*/
var isRaining = "raining"

if isRaining  == "raining" {
  "It’s raining, I don’t want to work today."
}
else {
   "Although it’s sunny, I still don’t want to work today."
}

/*---------------------
         Switch
 ----------------------*/
var  jobLevel  = 7
    switch jobLevel {
    case 1: print("Member")
    case 2:print("Team Leader")
    case 3:print("Manager")
    case 4:print("Director")
    default: print("We don't have this job")
}
