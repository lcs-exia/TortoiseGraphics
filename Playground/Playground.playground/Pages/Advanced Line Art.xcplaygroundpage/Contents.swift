//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)

canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas

/* invoke built-in functions/methods
 wrote and invoke custom functions / methods
 use variables and constants
 use different data types, like int, double, float, and boolean
 use iteration, via for or while loops
 use selection, via if statements
 work with arithmetic operators like * / + - and %
 */



canvas.drawing { a in
    // Hide tortoise
    a.hideTortoise()
    a.appleLogo(scaleFactor: 0.05)

}
