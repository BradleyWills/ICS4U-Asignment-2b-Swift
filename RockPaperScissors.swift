// The RockPaperScissors program implements an application that allows you to
// play rock, paper, scissors against a computer.
// author  Bradley Wills
// version 1.0
// since   2020-03-11

// Create variables
var randInt:Int = 0
var randInput:String = ""
var userInt:Int = 0
var gameCount:Int = 0
var winCount:Int = 0
var finished = false
var finished2 = false

while finished == false {
    randInt = Int.random(in: 0..<4)
    // Defines the random choice as a string
    if randInt == 1 {
        randInput = "rock"
    } else if randInt == 2 {
        randInput = "paper"
    } else {
        randInput = "scissors"
    }
    // Ask for input
    if let userInput = readLine() {
        if userInput == "rock" || userInput == "paper" || userInput == "scissors" {
            if userInput == "rock" {
                userInt = 1
            } else if userInput == "paper" {
                userInt = 2
            } else {
                userInt = 3
            }
            if userInt == randInt {
                // You tie
                print("You tied. The enemy also chose \(userInput).")
                gameCount += 1
            } else if randInt == userInt + 1 || randInt == userInt - 2 {
                // You lose
                print("You lost. You chose \(userInput) and the enemy chose \(randInput).")
                gameCount += 1
            } else {
                // You win
                print("You won. You chose \(userInput) and the enemy chose \(randInput).")
                winCount += 1
                gameCount += 1
            }
            print("Do you want to keep playing?")
            while finished2 == false {
                print("Input yes or no.")
                // Ask for input
                if let yesOrNoInput = readLine() {
                    if yesOrNoInput == "no" {
                        print("Your win percentage was %\(winCount / gameCount * 100).")
                        finished = true
                        finished2 = true
                    } else if yesOrNoInput == "yes" {
                        finished2 = true
                    } else {
                        print("Invalid Input.")
                    }
                }
            }
        }
    } else {
        print("Invalid Input.")
    }
}