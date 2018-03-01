//: Playground - noun: a place where people can play

protocol PoliceMan{
    func  arrestCriminals  ()
}
protocol ToolMan {
    func fixComputer()
}

struct Person : PoliceMan , ToolMan{
    var name: String
    var toolMan : ToolMan
    
    func arrestCriminals() {
        print("arrestCriminals")
    }
    
    func fixComputer() {  print("fix computer")}
}

struct Engineer : ToolMan {
    func fixComputer() {
        print("fixComputer")
    }
}


var Steven =  Person(name: "Steven", toolMan: Engineer())
Steven.arrestCriminals()
Steven.fixComputer()
