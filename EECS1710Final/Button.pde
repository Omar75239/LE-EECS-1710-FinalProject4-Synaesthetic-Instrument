class Button {
  float x; //x location
  float y; //y location
  float r; //size of the button

  //constructor for the Button
  Button(float x, float y, float r) {
    this.x = x;
    this.y = y;
    this.r = r;
  }

  //checks if mouse cursor hovers over button
  boolean include(float mx, float my) {
    if (dist(mx, my, x, y) < r) {
      return true;
    } else {
      return false;
    }
  }

  //changes color of button if mouse cursor is hovered over button
  void display(float mx, float my) {
    if (include(mx, my)) {
      fill(21, 133, 23);
    } else {
      fill(34, 199, 37);
    }
    stroke(0);
    strokeWeight(4);
    ellipse(x, y, r, r);
  }
}
