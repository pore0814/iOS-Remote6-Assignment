//: Playground - noun: a place where people can play

/*
 There are several gasoline types, 92, 95, 98, and diesel. We can use enum to model
 them.
 • Please create enum named  Gasoline  to model gasoline.
 • Every kind of gasoline has price. Please create a method named  getPrice  in Gasoline enum. The method will return difference price depend on difference gasoline.
 */

enum Gasoline {
    case gasoline_92
    case gasoline_95
    case gasoline_98
    case diesel
    
    func getPrice() ->  Float{
        switch self {
        case .gasoline_92:
            return 26.40
        case .gasoline_95:
            return 27.90
        case .gasoline_98:
            return 29.90
        case .diesel:
            return 24.30
            
        }
    }
}
Gasoline.gasoline_92.getPrice()



/*Q3
 Optional is a very special data type in swift. Take    var  a:  Int ? =  10     for example, the value of a will be  nil  or  Int . You should learn how to deal with optional data type.
 • People would like to have pets, but not everyone could have one. Declare a class  Pet with  name  property and a class  People  with  pet  property which will store a Pet instance or nil . Please try to figure out what data type is suitable for these properties in Pet and People.
*/
class Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}
let Dog = Pet(name: "Max")

class People {
    var pet : Pet?
}

let Annie = People()
Annie.pet = Dog
let King = People()

// • Please create a People instance and use  guard let  to unwrap the  pet  property.
func checkwithguard( Q1 : People){
    guard let  Q1 = Annie.pet?.name else  {
        return
    }
    print(Q1 )
}


//• Please create another People instance and use  if let  to unwrap the  pet  property
func checkwithif( Q2 : People){
    if let Q2 = King.pet?.name{
        print(Q2)
    }else{
        print("no name")
    }
    
}
checkwithguard(Q1: Annie)
checkwithif(Q2: King)

