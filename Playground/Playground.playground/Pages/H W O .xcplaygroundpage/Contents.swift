//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let canvas = PlaygroundCanvas(frame: myFrame)

canvas.frameRate = 20
canvas.color = .white
PlaygroundPage.current.liveView = canvas

canvas.drawing { alice in
        // D R A W T H E A X E S
    for _ in 1...4 {
        alice.forward(250)
        alice.backward(250)
        alice.right(90)
    }
        // G O T O T O P L E F T C O R N E R
    alice.penUp()
    alice.goto(-250, 250)
    alice.penDown()

    for _ in 1...11 {
        alice.penDown()
        alice.right(180)
        alice.forward(500)
        alice.penUp()
        alice.left(90)
        alice.forward(50)
        alice.left(90)
        alice.forward(500)

    }
    alice.right(90)
    for _ in 1...11{
        alice.penDown()
        alice.right(180)
        alice.forward(550)
        alice.penUp()
        alice.left(90)
        alice.forward(50)
        alice.left(90)
        alice.forward(550)
    }
}

