//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
let myFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let alice = PlaygroundCanvas(frame: myFrame)

alice.frameRate = 30
alice.color = .white
PlaygroundPage.current.liveView = alice

alice.drawing { alice in
    
    // Define the square method
    func square(withSize size: Double) {
        
        alice.penDown()
        for _ in 1...4{
            alice.forward(size)
            alice.right(90)
        }
        alice.penUp()
        
    }
    // Invoke the square method
//    square(withSize: 50)
  //  square(withSize: 20)
    //square(withSize: 10)
    
    // Use a loop to draw 15 squares quickly
    for mySize in 1...80{
        
        square(withSize: Double(mySize))
    }
}



