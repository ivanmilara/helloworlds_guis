PImage img; // Declare a variable of type PImage

void setup() {
  size(800,800);
  // Make a new instance of a PImage by loading an image file
  img = loadImage("parrot.jpg");
}

void draw() {
  background(0);
  // Draw the image to the screen at coordinate (0,0)
  tint(100);
  image(img,0,0);
}
