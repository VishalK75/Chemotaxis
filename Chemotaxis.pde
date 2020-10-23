 class Bacteria
 {
  float myX;
  float myY;
  float mySpeed;
  float mySize;
  int myColor;
  Bacteria(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*10000)-10050;
    myColor = color(255);
    mySpeed = 2;
    mySize = (float)(Math.random()*6)+10;
}
  void move(){
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + mySpeed;
  }
  void show(){
    ellipse(myX, myY, mySize, mySize);
    fill (myColor);
    stroke (myColor);
  }
  void pop(){
    if(myY >= 540){
      myX = 700;
    }
  }
}   

Bacteria [] biology = new Bacteria [10000];
void setup()   
 {     
   size (600,600);
   background (255);
   for(int i = 0; i < biology.length; i++){
     biology[i] = new Bacteria();
   }
 }   
 void draw()   
 {
   background (255);
   fill(204);
   stroke(0, 0, 0);
   ellipse(300, 300, 570, 570);
   fill(153, 255, 255);
   stroke(0, 0, 0);
   rect(150, 550, 300, 50, 20);
   fill(102, 51, 0);
   stroke(102, 51, 0);
   rect(275, 450, 50, 100);
   fill(0, 102, 0);
   stroke(0, 102, 0);
   triangle(120, 450, 480, 450, 300, 270);
   triangle(150, 360, 450, 360, 300, 170);
   triangle(180, 270, 420, 270, 300, 110);
   for(int i = 0; i < biology.length; i++){
     biology[i].move();
     biology[i].show();
     biology[i].pop();
     }
 } 
