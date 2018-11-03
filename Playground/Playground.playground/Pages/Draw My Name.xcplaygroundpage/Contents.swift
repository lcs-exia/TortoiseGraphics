//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
let myFrame = CGRect(x: 0, y: 0, width: 800, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)

canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { a in
    
    // Start drawing name from top left corner of canvas
    a.penUp()
    a.goto(-100, 225)
    
    // Set pen width
    a.penSize(5)
    
    // Hide turtle because the icon gets larger when the pen size is increased
    a.hideTortoise()

    // Draw name
    a.uppercaseE()
    a.lowercaseR()
    a.lowercaseI()
    a.lowercaseC()
    
    // Draw first curve of x
    a.curve(withSides: -50, withSize: 20, drawSides: 8)
    // move turtle to draw second curve
    
    
    
}
