import Foundation

var randomNumber = 1
var userGuess = 1
var continueGuessing = true
var keepPlaying = true
var input = ""

while (keepPlaying) {
    randomNumber = Int(arc4random_uniform(101)) //get a random number between 0-100
    println("The random number to guess is: \(randomNumber)"  );
    while (continueGuessing) {
        println ("Pick a number between 0 and 100. ")
        input = NSString(data: NSFileHandle.fileHandleWithStandardInput().availableData, encoding:NSUTF8StringEncoding)! //get keyboard input
        input = input.stringByReplacingOccurrencesOfString("\n", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil) //strip off the /n
        userGuess = input.toInt()!
        if (userGuess == randomNumber) {
            continueGuessing = false
            println("Correct number!");
        }
            //nested if statement
        else if (userGuess > randomNumber){
            //user guessed too high
            println("Your guess is too high");
        }
        else{
            // no reason to check if userGuess < randomNumber. It has to be.
            println("Your guess is too low");
        }
    }
    println ("Play Again? Y or N");
    input = NSString(data: NSFileHandle.fileHandleWithStandardInput().availableData, encoding:NSUTF8StringEncoding)!
    input = input.stringByReplacingOccurrencesOfString("\n", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
    
    if (input == "N" || input == "n"){
        keepPlaying = false
    }
    continueGuessing = true
}
