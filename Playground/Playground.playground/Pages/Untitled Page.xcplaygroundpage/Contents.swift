import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
let myFrame = CGRect(x: 0, y: 0, width: 800, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)

canvas.frameRate = 100
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { a in
    
    // Start drawing name from top left corner of canvas
    a.penUp()
    a.goto(-200, 250)
    
    // Set pen width
    a.penSize(5)
    
    // Hide turtle because the icon gets larger when the pen size is increased
    //a.hideTortoise()
    
    // Draw name
    a.testE()
    a.testR()
    a.testI()
    a.testC()
    
    // Draw first curve of x
    a.right(25)
    a.curve(withSides: -80, withSize: 10, drawSides: 8)
    // Move back to the bottom of c
    a.right(180)
    a.curve(withSides: 80, withSize: 10, drawSides: 10)
    // Turn to face up
    a.setHeading(0)
    // Draw straight line to top of x
    a.penDown()
    a.forward(100)
    
    // move turtle to draw second curve
    
    
    
}
