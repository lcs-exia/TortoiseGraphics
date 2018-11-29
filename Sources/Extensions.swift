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

    func uppercaseE(scaleFactor scale: Double = 1.0) {
        //Uppercase E

        //Turtle Face right
        self.setHeading(90)

        //Turn
        self.right(210)

        // Half Circle
        self.curve(withSides: -40, withSize: 5 * scale, drawSides: 25)

        //Turn
        self.right(200)

        // Half Circle
        self.curve(withSides: -40, withSize: 5 * scale, drawSides: 25)

    }
    func lowercaseR(scaleFactor scale: Double = 1.0) {
        //Lowercase r

        //Draw first curve half of r
        self.curve(withSides: -40, withSize: 5 * scale, drawSides: 8)

        //Turn
        self.right(150)

        //Draw small curve on top
        self.curve(withSides: -40, withSize: 2.5 * scale, drawSides: 10)

        //Turn
        self.left(180)

        //Draw final curve
        self.curve(withSides: -40, withSize: 4 * scale, drawSides: 12)

    }
    func lowercaseI(scaleFactor scale: Double = 1.0) {
        //Lowercase i

        //Draw first curve on i
        self.curve(withSides: -30, withSize: 6.5 * scale, drawSides: 10)

        //Turn
        self.right(180)

        // Draw second curve on i
        self.curve(withSides: -30, withSize: 6.5 * scale, drawSides: 8)

        //Move turtle for the dot on the i

        //Don't need the following for signature I

/*        self.setHeading(0)
        self.penUp()
        self.forward(50)
        self.left(90)
        self.forward(37.5)
        self.penDown()
  //      Draw dot
        self.curve(withSides: 10, withSize: 2, drawSides: 10)
        
        self.setHeading(90)
        self.penUp()
        self.forward(37.5)
        self.right(90)
        self.forward(50)
        self.penDown()  */
        self.setHeading(90)

    }
    func lowercaseC(scaleFactor scale: Double = 1.0) {
        // Lowercase c
        // Turn turtle
        self.curve(withSides: -50, withSize: 2 * scale, drawSides: 12)
        // Draw curve on c to connect it to the i
        self.curve(withSides: 30, withSize: 7 * scale, drawSides: 10)
        self.right(180)
        //Draw final 3/4 of circle to draw c
        self.curve(withSides: -20, withSize: 7.5 * scale, drawSides: 15)

    }
    func uppercaseX(scaleFactor scale: Double = 1.0) {
        // Uppercase X
        // Draw first curve of x
        self.right(25)
        self.curve(withSides: -80, withSize: 10 * scale, drawSides: 10)
        // Move back to the bottom of c
        self.right(180)
        self.curve(withSides: 80, withSize: 10 * scale, drawSides: 10)
        // Turn to face up
        self.setHeading(0)
        // Draw straight line to top of x
        self.penDown()
        self.forward(100 * scale)
        // Turn for second curve
        self.right(170)
        //Draw second curve
        self.curve(withSides: -80, withSize: 10 * scale, drawSides: 12)
    }
    func lowercaseA (scaleFactor scale: Double = 1.0) {
        // draw lowercase a
        //setheading
        self.setHeading(75)
        // turn cursor
        self.curve(withSides: -40, withSize: 5 * scale, drawSides: 5)
        // draw connecting curve
        self.curve(withSides: 30, withSize: 7.5 * scale, drawSides: 5)
        //turn
        self.right(180)
        //draw circle
        self.curve(withSides: -30, withSize: 3.5 * scale, drawSides: 30)
        //turn
        self.left(180)
        // put cursor in position
        self.curve(withSides: 30, withSize: 3.5 * scale, drawSides: 7)
        //draw line
        self.curve(withSides: -30, withSize: 5 * scale, drawSides: 5)
    }
    func finalLine (scaleFactor scale: Double = 1.0) {
        // Final line
        // prepare turtle to draw line
        self.curve(withSides: -30, withSize: 7 * scale, drawSides: 17)
        self.penDown()
        // setheading so line is in place
        self.setHeading(-90)
        self.forward(450 * scale)
    }
    func signature (scaleFactor scale: Double = 1.0) {
        //Uppercase E

        //Turtle Face right
        self.setHeading(90)

        //Turn
        self.right(210)

        // Half Circle
        self.curve(withSides: -40, withSize: 5 * scale, drawSides: 25)

        //Turn
        self.right(200)

        // Half Circle
        self.curve(withSides: -40, withSize: 5 * scale, drawSides: 25)

        //Lowercase r

        //Draw first curve half of r
        self.curve(withSides: -40, withSize: 5 * scale, drawSides: 8)

        //Turn
        self.right(150)

        //Draw small curve on top
        self.curve(withSides: -40, withSize: 2.5 * scale, drawSides: 10)

        //Turn
        self.left(180)

        //Draw final curve
        self.curve(withSides: -40, withSize: 4 * scale, drawSides: 12)

        //Lowercase i

        //Draw first curve on i
        self.curve(withSides: -30, withSize: 6.5 * scale, drawSides: 10)

        //Turn
        self.right(180)

        // Draw second curve on i
        self.curve(withSides: -30, withSize: 6.5 * scale, drawSides: 8)

        //Move turtle for the dot on the i

        //Don't need the following for signature I

        /*        self.setHeading(0)
         self.penUp()
         self.forward(50)
         self.left(90)
         self.forward(37.5)
         self.penDown()
         //      Draw dot
         self.curve(withSides: 10, withSize: 2, drawSides: 10)
         
         self.setHeading(90)
         self.penUp()
         self.forward(37.5)
         self.right(90)
         self.forward(50)
         self.penDown()  */
        self.setHeading(90)

        // Lowercase c
        // Turn turtle
        self.curve(withSides: -50, withSize: 2 * scale, drawSides: 12)
        // Draw curve on c to connect it to the i
        self.curve(withSides: 30, withSize: 7 * scale, drawSides: 10)
        self.right(180)
        //Draw final 3/4 of circle to draw c
        self.curve(withSides: -20, withSize: 7.5 * scale, drawSides: 15)

        // Uppercase X
        // Draw first curve of x
        self.right(25)
        self.curve(withSides: -80, withSize: 10 * scale, drawSides: 10)
        // Move back to the bottom of c
        self.right(180)
        self.curve(withSides: 80, withSize: 10 * scale, drawSides: 10)
        // Turn to face up
        self.setHeading(0)
        // Draw straight line to top of x
        self.penDown()
        self.forward(100 * scale)
        // Turn for second curve
        self.right(170)
        //Draw second curve
        self.curve(withSides: -80, withSize: 10 * scale, drawSides: 12)

        //Lowercase i

        //Draw first curve on i
        self.curve(withSides: -30, withSize: 6.5 * scale, drawSides: 10)

        //Turn
        self.right(180)

        // Draw second curve on i
        self.curve(withSides: -30, withSize: 6.5 * scale, drawSides: 8)

        //Move turtle for the dot on the i

        //Don't need the following for signature I

        /*        self.setHeading(0)
         self.penUp()
         self.forward(50)
         self.left(90)
         self.forward(37.5)
         self.penDown()
         //      Draw dot
         self.curve(withSides: 10, withSize: 2, drawSides: 10)
         
         self.setHeading(90)
         self.penUp()
         self.forward(37.5)
         self.right(90)
         self.forward(50)
         self.penDown()  */
        self.setHeading(90)

        // draw lowercase a
        //setheading
        self.setHeading(75)
        // turn cursor
        self.curve(withSides: -40, withSize: 5 * scale, drawSides: 5)
        // draw connecting curve
        self.curve(withSides: 30, withSize: 7.5 * scale, drawSides: 5)
        //turn
        self.right(180)
        //draw circle
        self.curve(withSides: -30, withSize: 3.5 * scale, drawSides: 30)
        //turn
        self.left(180)
        // put cursor in position
        self.curve(withSides: 30, withSize: 3.5 * scale, drawSides: 7)
        //draw line
        self.curve(withSides: -30, withSize: 5 * scale, drawSides: 5)

        // Final line
        // prepare turtle to draw line
        self.curve(withSides: -30, withSize: 7 * scale, drawSides: 17)
        self.penDown()
        // setheading so line is in place
        self.setHeading(-90)
        self.forward(450 * scale)
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
}

//custom method
