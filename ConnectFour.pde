// ConnectFour class 

class ConnectFour {
  
  // instance variables 
  
  Cell[][] cells; 
  
  // constructors 
  
  // This constructor creates a new ConnectFour object 
  // Takes in a row number and column number 
  ConnectFour(int rows, int cols) {
    cells = new Cell[rows][cols];
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        Cell c = new Cell();
        cells[i][j] = c; 
      }
    }
  }
 
  // methods
  
  // This method can change the player/color of a cell object within a ConnectFour object array 
  // Takes in a row index, column index, and player number 
  void updateCell(int row, int col, int player) {
    if (player < 0 || player > 2) {
      throw new IllegalArgumentException("IllegalArgumentException: player cannot be less than 0 or greater than 2");
    }
    //Cell c1 = new Cell();
    //cells[row][col] = c1;
    //c1.setPlayer(player);
    cells[row][col].setPlayer(player);
    
  }
  
  // This method displays the whole ConnectFour grid. 
  void display() {
    int spacerX = 0;
    int spacerY = 0;
    for (int i = 0; i < cells.length; i++) {
      for (int j = 0; j < cells[0].length; j++) {
        cells[i][j].display(spacerX, spacerY);
        spacerX += CELL_WIDTH; 
      }
      spacerX = 0;
      spacerY += CELL_WIDTH;
    }
    
  }
  
  
  // This method outputs a numeric representation of each object in the row in the console, 
  // with the row given as an index
  void printRow(int row) {
    for (Cell c : cells[row]) {
      print(c.getPlayer() + " "); 
      
    }
  }
  
  // This method outputs a numeric representation of each object in the column in the console, 
  // with the column given as an index
  void printColumn(int col) {
    for (int i = col; i < cells[0].length; i++) {
      print(cells[0][i].getPlayer() + "\n");
    }
  }
  
  // This method prints out the whole grid of Cells as numbers corresponding to their player number, 
  // in a square fashion 
  void printGrid() {
     for (int i = 0; i < cells.length; i++) {
      for (int j = 0; j < cells[0].length; j++) {
        print(cells[i][j].getPlayer() + " ");
      }
      println();
    }
  }
  
} // END CONNECT_FOUR CLASS

















//
