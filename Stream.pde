/**
 * Stream Object 
 */
class Stream {
  ArrayList<Char> chars;
  int numChar, speed;

  Stream(int tempX) {

    chars = new ArrayList<Char>();
    numChar = round(random(10, 20));
    speed = round(random(10, 30));
    for (int y = 0; y< numChar*20; y+=20) {
      chars.add(new Char(tempX, y));
    }
  }

  void update() {
    for (int i = 0; i < chars.size(); i++) {
      //how we pick colors
      float alpha  = map(i, 0, chars.size()-1, 0, 255);
      fill(0, 250, 82, alpha);
      if (i==chars.size()-1) fill(250, 255, 250);
      chars.get(i).show();

      //move characters
      if (frameCount % speed ==0) {
        chars.get(i).y += 20;
        if (i==chars.size()-1) {
          chars.get(i).getRandomChar();
        } 
        else {
          chars.get(i).theChar=chars.get(i+1).theChar;
        }
      }

      //change character randomly 
      if (random(1) <0.001) {
        chars.get(i).getRandomChar();
      }
    }
    if (chars.get(0).y > height) {
      for (int i = 0; i<chars.size(); i++) {
        chars.get(i).y=(chars.size()-1)*-20;
      }
    }
  }
}
