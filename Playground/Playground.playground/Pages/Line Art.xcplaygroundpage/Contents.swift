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

canvas.drawing { alice in
alice.hideTortoise()
        for _ in 1...10{
            // Draw a dashed circle
            for _ in 1...36 {
                alice.penUp()
                alice.forward(3)
                alice.right(5)
                alice.penDown()
                alice.forward(5)
                alice.right(5)
            }
            for _ in 1...36 {
                alice.penUp()
                alice.forward(4)
                alice.right(5)
                alice.penDown()
                alice.forward(6)
                alice.right(5)
                
            }
            for _ in 1...36 {
                alice.penUp()
                alice.forward(5)
                alice.right(5)
                alice.penDown()
                alice.forward(7)
                alice.right(5)
                
            }


            alice.right(36)
            
            
    }

alice.penUp()
alice.goto(135, -200)
    alice.penDown()
    alice.signature(scaleFactor: 0.25)
}
