public extension Tortoise {

    func square(withSize size: Double) {

        self.penDown()
        for _ in 1...4 {
            self.forward(size)
            self.right(90)

        }
        self.penUp()

    }

    func curve(withSides sideCount: Int, withSize size: Double, drawSides sideLimit: Int) {

        self.penDown()
        for _ in 1...sideLimit {
            self.forward(size)
            self.right(360 / Double(sideCount))

        }
        self.penUp()
    }
    func exPLOSION(atX: Double, atY: Double, scaleFactor scale: Double = 1.0) {
        self.penUp()
        self.goto(atX, atY)
        self.penDown()
        for _ in 1...100 {

            // Turn a random amount
            let turn = self.random(360)
            self.left(turn)

            // Draw a random line length
            let distance = self.random(250 * scale)
            self.forward(distance)

            // Go back to centre of canvas and original heading
            self.penUp()
            self.goto(atX, atY)
            self.setHeading(0)
            self.penDown()

        }

        // Hide the turtle when done
        self.hideTortoise()
    }
    func alogoTop(scaleFactor scale: Double = 1.0) {
        //Move turtle
        self.right(130)
        self.forward(25 * scale)
        //draw leaf of the apple
        self.curve(withSides: 80, withSize: 6 * scale, drawSides: 20)
        self.right(90)
        self.curve(withSides: 80, withSize: 6 * scale, drawSides: 20)

    }
    func alogoBody(scaleFactor scale: Double = 1.0) {
        // Turn turtle
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
    func appleLogo(scaleFactor scale: Double = 1.0) {
        alogoBody(scaleFactor: 1 * scale)
        alogoTop(scaleFactor: 1 * scale)

    }
    func curvenoPen(withSides sideCount: Int, withSize size: Double, drawSides sideLimit: Int) {

        for _ in 1...sideLimit {
            self.forward(size)
            self.right(360 / Double(sideCount))

        }

        }
    func ghostappleLogo(scaleFactor scale: Double = 1.0) {
        // Apple logo body

        self.penUp()

        // save heading
        var currentHeading = self.heading
        var currentX = self.xcor
        var currentY = self.ycor

        // Draw small apple
        self.appleLogo(scaleFactor: 0.05)

        // restore prior heading and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Draw next part of big apple
        self.setHeading(0)
        self.left(50)
        self.curvenoPen(withSides: -80, withSize: 8 * scale, drawSides: 13)

        // Save heading and position
        currentHeading = self.heading
        currentX = self.xcor
        currentY = self.ycor

        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)

        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Draw next part of big apple
        self.curvenoPen(withSides: -80, withSize: 8 * scale, drawSides: 12)

        // Save heading and position
        currentHeading = self.heading
        currentX = self.xcor
        currentY = self.ycor

        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)

        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Make curve steeper and larger to draw the more narrow curve of apple
        self.curvenoPen(withSides: -90, withSize: 15 * scale, drawSides: 9)

        // Save heading and position
        currentHeading = self.heading
        currentX = self.xcor
        currentY = self.ycor

        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)

        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Draw rest of steep curve
        self.curvenoPen(withSides: -90, withSize: 15 * scale, drawSides: 9)
        self.penUp()

        // Save heading and position
        currentHeading = self.heading
        currentX = self.xcor
        currentY = self.ycor

        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)

        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Draw the "lumps" at the bottom of the apple (able to use the inverse of that function to draw the middle of the "lumps" then use the same function to draw second "lump")
        self.curvenoPen(withSides: -40, withSize: 8 * scale, drawSides: 8)

        // Save heading and position
        currentHeading = self.heading
        currentX = self.xcor
        currentY = self.ycor

        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)

        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

    }
    func secondghostappleLogo(scaleFactor scale: Double = 1.0) {
        // Middle Lump
        self.curvenoPen(withSides: 40, withSize: 8 * scale, drawSides: 8)
        // Save heading and position
       var  currentHeading = self.heading
       var currentX = self.xcor
       var currentY = self.ycor

        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)

        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Third Lump
        self.curvenoPen(withSides: -40, withSize: 8 * scale, drawSides: 8)

        // Save heading and position
        currentHeading = self.heading
        currentX = self.xcor
        currentY = self.ycor

        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)

        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Draw the start of the second half of the apple to the "hole" of the apple (able to use roughly same function as steeper end of the apple with slight alterations)
        self.curvenoPen(withSides: -90, withSize: 15 * scale, drawSides: 8)

        // Save heading and position
        currentHeading = self.heading
        currentX = self.xcor
        currentY = self.ycor

        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)

        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Turn tortoise to a position to draw the "hole"
        self.left(100)

        // Draw half of the hole of apple
        self.curvenoPen(withSides: 40, withSize: 12 * scale, drawSides: 9)

        // Save heading and position
        currentHeading = self.heading
        currentX = self.xcor
        currentY = self.ycor

        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)

        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Draw second half of the hole of apple
        self.curvenoPen(withSides: 40, withSize: 12 * scale, drawSides: 9)
        
        // Save heading and position
        currentHeading = self.heading
        currentX = self.xcor
        currentY = self.ycor
        
        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)
        
        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Turn tortoise to draw final part of apple
        self.left(105)

        // Draw half of the final curve of apple (using a slightly altered version of the first curve of the apple)
        self.curvenoPen(withSides: -80, withSize: 8 * scale, drawSides: 12)

        // Save heading and position
        currentHeading = self.heading
        currentX = self.xcor
        currentY = self.ycor

        // Draw little apple
        self.appleLogo(scaleFactor: 0.05)

        // Restore and position
        self.setHeading(currentHeading)
        self.goto(currentX, currentY)

        // Draw second half of the final curve of apple
        self.curvenoPen(withSides: -80, withSize: 8 * scale, drawSides: 12)


    }
}

//custom method
