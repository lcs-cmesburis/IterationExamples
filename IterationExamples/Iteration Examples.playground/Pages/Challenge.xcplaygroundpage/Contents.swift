//: [Previous](@previous)
//: # Challenge
//: Extend the code you wrote on the following page to generate this image:
//:
//: ![challenge](challenge.png "Challenge")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Below this line, try combining a loop and four statements that draw lines to generate the goal

for i in stride(from: 0, to: 300, by: 20)
    
{
    canvas.drawLine(fromX: i, fromY: 0, toX: 300, toY: i)
    canvas.drawLine(fromX: 0, fromY: i, toX: i, toY: 300)
    canvas.drawLine(fromX: 300, fromY: i, toX: 300-i, toY: 300)
    canvas.drawLine(fromX: 0, fromY: 300-i, toX: i, toY: 0)
    
}



PlaygroundPage.current.liveView = canvas.imageView
