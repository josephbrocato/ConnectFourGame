// Cell class

class Cell {
  
  // instance variables
  int player;
  
  // constructors 
  
  // This constructor creates a new Cell object, with a specified player number as a parameter 
  Cell(int player) { 
    this.player = player; 
  }
  
  // This constructor creates a new Cell object, without no specified player number, 
  // where it will default the player number to 0. 
  Cell() {
    this.player = 0;
  }
  
  // methods 
  // This method assigns an int value that represents the player number for the object.
  // 0 is gray which is unassigned, 1 is red and player 1, and 2 is blue and player 2
  void setPlayer(int player) {
    if (player < 0 || player > 2) {
      throw new IllegalArgumentException("IllegalArgumentException: player cannot be less than 0 or greater than 2");
    }
    this.player = player; 
  }
  
  // This method returns the player number 
  int getPlayer() {
    return player; 
  }
  
  // This method displays the Cell object as a square and circle. The color of the circle
  // reflects the player number 
  void display(float x, float y) {
    // square
    fill(#EBF000);
    strokeWeight(1.3);
    square(x, y, CELL_WIDTH);
    
    //circle, and setting colors based on player number 
    if (player == 0) {
      fill(#9B9B9B);
    } else if (player == 1) {
      fill(#FF0808);
    } else if (player == 2) {
      fill(#1926FA);
    }
    strokeWeight(0);
    circle(x + (CELL_WIDTH / 2), y + (CELL_WIDTH / 2), CELL_WIDTH - (CELL_WIDTH * .1));
  }
  

} // END CELL CLASS 














//
