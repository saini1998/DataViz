Table table;
PImage img;

void setup(){
  background(0);
  size(1009,1009);
  img = loadImage("mapclean.jpg");
  
  table = loadTable("snow_pixelcoords.csv","header");
  //println(table.getRowCount() + " total rows in table");
}

void draw() {
  
  image(img,0,0);
  for (TableRow row : table.rows()) {
    int count = row.getInt("count");
    if (count>0){
      int factor = 2 + count;
      int xs = row.getInt("x_screen");
      int ys = row.getInt("y_screen");
      noStroke();
      fill(32,178,170,(90*count));
      ellipse(xs,ys,factor,factor);
    }
    if(count==-999){
      int xx = row.getInt("x_screen");
      int yy = row.getInt("y_screen");
      noStroke();
      fill(255,0,0);
      rect(xx,yy,8,8);
    }
  }
}
