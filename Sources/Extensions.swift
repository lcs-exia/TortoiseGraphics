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
    func testE() {
        //Uppercase E

        //Turtle Face right
        self.setHeading(90)

        //Turn
        self.right(210)

        // Half Circle
        self.curve(withSides: -40, withSize: 10, drawSides: 25)

        //Turn
        self.right(200)

        // Half Circle
       self.curve(withSides: -40, withSize: 10, drawSides: 25)

    }
    func testR() {
        //Lowercase r

        //Draw first curve half of r
        self.curve(withSides: -40, withSize: 10, drawSides: 8)

        //Turn
        self.right(150)

        //Draw small curve on top
        self.curve(withSides: -40, withSize: 5, drawSides: 10)

        //Turn
        self.left(180)

        //Draw final curve
        self.curve(withSides: -40, withSize: 8, drawSides: 12)

    }
    func testI() {
        //Lowercase i

        //Draw first curve on i
        self.curve(withSides: -30, withSize: 13, drawSides: 10)

        //Turn
        self.right(180)

        // Draw second curve on i
        self.curve(withSides: -30, withSize: 13, drawSides: 8)

        //Move turtle for the dot on the i
        self.setHeading(0)
        self.penUp()
        self.forward(100)
        self.left(90)
        self.forward(75)
        self.penDown()
        //Draw dot
        self.curve(withSides: 10, withSize: 2, drawSides: 10)

        self.setHeading(90)
        self.penUp()
        self.forward(75)
        self.right(90)
        self.forward(100)
        self.penDown()
        self.setHeading(90)

    }
    func testC() {
        // Lowercase c
        // Turn turtle
        self.curve(withSides: -50, withSize: 4, drawSides: 12)
        // Draw curve on c to connect it to the i
        self.curve(withSides: 30, withSize: 14, drawSides: 10)
        self.right(180)
        //Draw final 3/4 of circle to draw c
        self.curve(withSides: -20, withSize: 15, drawSides: 15)
        self.setHeading(90)
    }

    func uppercaseE() {
        //Uppercase E

        //Turtle Face right
        self.setHeading(90)

        //Turn
        self.right(210)

        // Half Circle
        self.curve(withSides: -40, withSize: 5, drawSides: 25)

        //Turn
        self.right(200)

        // Half Circle
        self.curve(withSides: -40, withSize: 5, drawSides: 25)

    }
    func lowercaseR() {
        //Lowercase r

        //Draw first curve half of r
        self.curve(withSides: -40, withSize: 5, drawSides: 8)

        //Turn
        self.right(150)

        //Draw small curve on top
        self.curve(withSides: -40, withSize: 2.5, drawSides: 10)

        //Turn
        self.left(180)

        //Draw final curve
        self.curve(withSides: -40, withSize: 4, drawSides: 12)

    }
    func lowercaseI() {
        //Lowercase i

        //Draw first curve on i
        self.curve(withSides: -30, withSize: 6.5, drawSides: 10)

        //Turn
        self.right(180)

        // Draw second curve on i
        self.curve(withSides: -30, withSize: 6.5, drawSides: 8)

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
    func lowercaseC() {
        // Lowercase c
        // Turn turtle
        self.curve(withSides: -50, withSize: 2, drawSides: 12)
        // Draw curve on c to connect it to the i
        self.curve(withSides: 30, withSize: 7, drawSides: 10)
        self.right(180)
        //Draw final 3/4 of circle to draw c
        self.curve(withSides: -20, withSize: 7.5, drawSides: 15)

    }
    func uppercaseX() {
        // Uppercase X
        // Draw first curve of x
        self.right(25)
        self.curve(withSides: -80, withSize: 10, drawSides: 10)
        // Move back to the bottom of c
        self.right(180)
        self.curve(withSides: 80, withSize: 10, drawSides: 10)
        // Turn to face up
        self.setHeading(0)
        // Draw straight line to top of x
        self.penDown()
        self.forward(100)
        // Turn for second curve
        self.right(170)
        //Draw second curve
        self.curve(withSides: -80, withSize: 10, drawSides: 12)
    }
    func lowercaseA () {
        // draw lowercase a
        //setheading
        self.setHeading(75)
        // turn cursor
        self.curve(withSides: -40, withSize: 5, drawSides: 5)
        // draw connecting curve
        self.curve(withSides: 30, withSize: 7.5, drawSides: 5)
        //turn
        self.right(180)
        //draw circle
        self.curve(withSides: -30, withSize: 3.5, drawSides: 30)
        //turn
        self.left(180)
        // put cursor in position
        self.curve(withSides: 30, withSize: 3.5, drawSides: 7)
        //draw line
        self.curve(withSides: -30, withSize: 5, drawSides: 5)
    }
    func finalLine () {
        // Final line
        // prepare turtle to draw line
        self.curve(withSides: -30, withSize: 7, drawSides: 17)
        self.penDown()
        // setheading so line is in place
        self.setHeading(-90)
        self.forward(450)
    }

}

//Add a custom method
