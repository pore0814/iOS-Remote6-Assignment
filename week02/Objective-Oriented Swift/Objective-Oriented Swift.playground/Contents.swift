//: Playground - noun: a place where people can play
/*Q1 :1.
 Declare class  Animal  with property  gender , and method  eat() . Data type of gender should be enum Gender as list below. Call eat() method will print  I eat everything!
 */

enum Gender{
    case male
    case female
    case undefinded
}

class Animal{
    var gender : Gender
    init(gender : Gender) {
        self.gender = gender
    }
    
    func eat() -> String{
        return "I eat everything!"
    }
    
}
let eatingpatten = Animal(gender: .male).eat()


/*Q2:Declare class  Elephant ,  Tiger ,  Horse  inherit from Animal. Override the eat method to print what they usually eat.
 */

class Elephant : Animal {
    
    override func eat() -> String {
        return "Elephants eat vegetation"
    }
}
class Tiger : Animal {
    
    
    override func eat() -> String {
        return "Tigers eat meat"
    }
}

class Horse : Animal {
    
    override func eat() -> String {
        return "Horses eat grass"
    }
}



/*Q3: Declare a class  Zoo  with property  weeklyHot  which means the most popular one in the zoo this week. The code list below can’t run correctly. Please solve the problem.  Notice that  tiger ,  elephant ,  horse  are instances of class Tiger, Elephant, Horse.
 */

class Zoo {
    var weeklyHot: Animal?
    
    init() {
    }
}
var elephant = Elephant(gender: .undefinded)
var tiger = Tiger (gender: .female)
var horse  = Horse (gender: .male)

let zoo = Zoo()
zoo .weeklyHot =  tiger
zoo .weeklyHot =  elephant
zoo .weeklyHot =  horse

