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
 
 write and invoke custom functions / methods
 
 use variables and constants
 
 use different data types, like int, double, float, and boolean
 
 use iteration, via for or while loops
 
 use selection, via if statements
 
 work with arithmetic operators like * / + - and %
 */



canvas.drawing { a in
   // Hide tortoise
//    a.hideTortoise()

    // Move turtle into position for leaf
    a.penUp()
    a.forward(150)
    a.setHeading(45)
    a.forward(100)
    a.setHeading(0)

    // Draw first half of leaf
    for _ in 1...4{
        a.appleLogo(scaleFactor: 0.05)
        a.curvenoPen(withSides: 80, withSize: 4, drawSides: 10)
    }

    // Move turtle in position for second part of leaf

    a.left(40)
    a.forward(30)
    a.right(220)
    a.forward(40)

    // Draw second half of leaf

    for _ in 1...2{
        a.right(180)
        a.appleLogo(scaleFactor: 0.05)
        a.curvenoPen(withSides: -80, withSize: 4, drawSides: 10)
    }
    // Move turtle in position for the body of the apple
    a.right(180)
    a.forward(100)
    a.left(90)
    a.forward(25)
    a.setHeading(0)

    a.ghostappleLogo(scaleFactor: 1)
    a.heading
    
}


/* // Turn turtle
self.left(50)

// Draw first curve of the apple
self.curve(withSides: -80, withSize: 8 * scale, drawSides: 25)

// Make curve steeper and larger to draw the more narrow curve of apple
self.curve(withSides: -90, withSize: 15 * scale, drawSides: 18)

// Draw the "lumps" at the bottom of the apple (able to use the inverse of that function to draw the middle of the "lumps" then use the same function to draw second "lump")
self.curve(withSides: -40, withSize: 8 * scale, drawSides: 8)
self.curve(withSides: 40, withSize: 8 * scale, drawSides: 8)
self.curve(withSides: -40, withSize: 8 * scale, drawSides: 8)

// Draw the start of the second half of the apple to the "hole" of the apple (able to use roughly same function as steeper end of the apple with slight alterations)
self.curve(withSides: -90, withSize: 15 * scale, drawSides: 8)

// Turn tortoise to a position to draw the "hole"
self.left(100)

// Draw hole of apple
self.curve(withSides: 40, withSize: 12 * scale, drawSides: 18)

// Turn tortoise to draw final part of apple
self.left(105)

// Draw final curve of apple (using a slightly altered version of the first curve of the apple)
self.curve(withSides: -80, withSize: 8 * scale, drawSides: 24)
//       self.setHeading(0)
}
*/
