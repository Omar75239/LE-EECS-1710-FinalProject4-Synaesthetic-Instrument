//Things to know:
//There are 9 green buttons placed on a wood log. Each button when clicked on make a special, distinct sound.
//There are moving clouds, which makes for a lively environment.
//You can make simple yet beautiful music with the green buttons.

PImage background, wood, cloudpicture;
import processing.sound.*;

Button button1 = new Button(60,780,50);
Button button2 = new Button(170,780,50);
Button button3 = new Button(280,780,50);
Button button4 = new Button(390,780,50);
Button button5 = new Button(500,780,50);
Button button6 = new Button(610,780,50);
Button button7 = new Button(720,780,50);
Button button8 = new Button(830,780,50);
Button button9 = new Button(940,780,50);
MovingCloud cloud = new MovingCloud();


SoundFile sound1;
SoundFile sound2;
SoundFile sound3;
SoundFile sound4;
SoundFile sound5;
SoundFile sound6;
SoundFile sound7;
SoundFile sound8;
SoundFile sound9;



void setup() {
  size(1000, 900);
  sound1 = new SoundFile(this, "sound1.mp3");
  sound2 = new SoundFile(this, "sound2.mp3");
  sound3 = new SoundFile(this, "sound3.mp3");
  sound4 = new SoundFile(this, "sound4.mp3");
  sound5 = new SoundFile(this, "sound5.mp3");
  sound6 = new SoundFile(this, "sound6.mp3");
  sound7 = new SoundFile(this, "sound7.mp3");
  sound8 = new SoundFile(this, "sound8.mp3");
  sound9 = new SoundFile(this, "sound9.mp3");
  background = loadImage("happybackground.jpeg");
  wood = loadImage("wood.jpeg");
  cloudpicture = loadImage("cloud.png");
}

void draw() {
  image(background, 0, 0);
  image(wood, 0, 700);
  button1.display(mouseX, mouseY);
  button2.display(mouseX, mouseY);
  button3.display(mouseX, mouseY);
  button4.display(mouseX, mouseY);
  button5.display(mouseX, mouseY);
  button6.display(mouseX, mouseY);
  button7.display(mouseX, mouseY);
  button8.display(mouseX, mouseY);
  button9.display(mouseX, mouseY);
  cloud.display();
  cloud.move();
}

void mousePressed() {
  // If the user crbell, play the sound!
  if (button1.include(mouseX, mouseY)) {
    sound1.play();
  }
  if (button2.include(mouseX, mouseY)) {
    sound2.play();
  }
  if (button3.include(mouseX, mouseY)) {
    sound3.play();
  }
  if (button4.include(mouseX, mouseY)) {
    sound4.play();
  }
  if (button5.include(mouseX, mouseY)) {
    sound5.play();
  }
  if (button6.include(mouseX, mouseY)) {
    sound6.play();
  }
  if (button7.include(mouseX, mouseY)) {
    sound7.play();
  }
  if (button8.include(mouseX, mouseY)) {
    sound8.play();
  }
  if (button9.include(mouseX, mouseY)) {
    sound9.play();
  }
}

//Background Image from:
//https://www.deviantart.com/d0wnload/art/Cartoon-Landscape-dreamland-89406451
//Wood Image from:
//https://www.vecteezy.com/vector-art/3448235-light-brown-cartoon-wood-texture-pattern-wallpaper-background
//Cloud Image from:
//https://www.pngitem.com/middle/hmxwTmJ_transparent-background-cloud-clipart-png-download-animated-transparent/
//Sounds taken from:
//https://musiclab.chromeexperiments.com/Song-Maker
