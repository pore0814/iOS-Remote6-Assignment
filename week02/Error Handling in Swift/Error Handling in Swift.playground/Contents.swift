//: Playground - noun: a place where people can play

/*-------------
 Error Handling in Swift
 ----------------*/

enum GuessNumberGameError: Error {
    case wrongNumber
    
}

class GuessNumerGame {
    var targetNumber =  10
    func guess(number:  Int)  throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print(  "Guess the right number:  \(  targetNumber) ")  }
}

let guessnumbergame = GuessNumerGame()

do{
    try guessnumbergame.guess(number: 20)
}catch {
    print (error)
}




