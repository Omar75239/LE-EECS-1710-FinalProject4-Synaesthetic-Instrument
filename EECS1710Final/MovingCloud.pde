class MovingCloud {
  float x, y, dx, size;
  MovingCloud() {
    this.x = 320;    //x position
    this.y = 50;     //y position
    this.dx = 1.2;   //how fast the cloud is going (in x direction)
    this.size = 100; //size of the cloud
  }
  
  //moves cloud
  void move() {
    this.x -= dx;
    if(this.x < -this.size) {
      this.x = (float) random(1100, 1600);
    }
  }
  
  //displays cloud
  void display() {
    image(cloudpicture, this.x, this.y, this.size, this.size);
  }
}
