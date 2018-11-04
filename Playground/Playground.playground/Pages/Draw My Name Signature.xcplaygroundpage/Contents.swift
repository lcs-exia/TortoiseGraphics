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
    a.penSize(7)
    
    // Hide turtle because the icon gets larger when the pen size is increased
    a.hideTortoise()
    
    // Draw name
    a.uppercaseE()
    a.lowercaseR()
    a.lowercaseI()
    a.lowercaseC()
    a.uppercaseX()
    a.lowercaseI()
    a.lowercaseA()
    a.finalLine()

}
