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
    for x in stride(from: -200, to: 250, by: 100){
        for y in stride(from: -200, to: 250, by: 125){
            let z =
            alice.exPLOSION(atX: Double(x), atY: Double(y), scaleFactor: 0.5)
        }
    }
 
    
        
    }
    

