/**
 * Sketch
 * 
 * Matrix Distorted Font (inspired by Audun Larsson Kleveland)
 */
PFont theFont;
ArrayList<Stream> streams;
void setup() {
  size(1280, 720, P2D);
  background(51);
  theFont = createFont("Bahnschrift", 20);
  textFont(theFont);
  textAlign(CENTER, TOP);
  println(Integer.parseInt("3147", 16));
  
  // instantiate and add streams
  streams = new ArrayList<Stream>();
  for (int x=0; x<width; x+=20) {
    streams.add(new Stream(x));
  }
}

void draw() {
  for (Stream s : streams) {
    s.update();
  }
}
