import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        
        // Command "t" on canvas to make the turtle draw
        canvas.drawing { a in
            
            // Add your commands within this block
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
            a.secondghostappleLogo(scaleFactor: 1)
        }
    }
    
}
