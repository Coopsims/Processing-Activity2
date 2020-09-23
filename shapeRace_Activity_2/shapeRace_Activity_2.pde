// @Author Ben Funk

/*
 Your misson, if you choose to accept, is to create a race between shapes. 
 The shapes will take 2 trips across the screen. On the second time, when the shape crosses
 the finish line, the program will stop and a message will display the winner.

 Using the code from the first lesson, we will now be adding on a bit more code.
 
 TASK: get the shapes to start off the screen on the left side, move left to right.
 Once they dissapear of the right side they will be reset to the starting point.
 After the shapes cross the white line for the second time, a message will display what shape won
 
   TODO:
   - add booleans for each shape
   - change boolean from false to true when the shape resets
   - create and if statement that checks to see if a shape has crossed the finish line
   - if a shape has crossed the finish line and the boolean for that shape is true
     stop the draw method from repeating and print "(shape) has won!!"
 */
//int fot the square
int x = -150;
int s = int(random(20));

// var for the rectangle
int y = -250;

// var for circle one
int z = -150;

// var for circle 2. Increase a by r for this circle
int a = -150;
int r = int(random(20));

// setup booleans here


void setup() {

  size(1000, 1000); 
  background(0); 
  // finish line 
  rect(750,0,25,1000);
}

void draw() {


  background(0);
    // finish line
  rect(750,0,50,1000);
  
  // For circle 1
  if (z<= 1150) { 

    z = z + int(random(25)); 
  } else {

    z = -150;
    
  }
  circle(z, 500, 75); 

  // For the square
  if (x<= 1150) { 

    x = x + s;
  } else {

    x = -150;
    
  }
  square(x, 100, 100);


  // For the rectangle
  if (y<= 1250) { 

    y = y + 10;
  } else {
  
    y = -250;
    
  }
  rect(y, 250, 200, 100);
  
  // For circle 2
    if (a<= 1150) { 

    a = a + r;
  } else {

    a = -150;
    
  }
  circle(a, 750, 75);
}
