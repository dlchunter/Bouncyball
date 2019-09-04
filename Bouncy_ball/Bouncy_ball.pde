int rad = 60;
  float BoxSizeX = 1000;
  float posx, posy;
  
  float xspeed = 4.3;
  float yspeed = 4.5;
  
  int xdirection = 1;
  int ydirection = 1;
  
  

  
void setup() {
  size(1000,1000);
  noStroke();
  frameRate(30);
  posx = width/2;
  posy = height/2;

  ellipseMode(RADIUS);
    
  }
  
 void draw() {
   
  background(51);
  rect(1000,1000,1000,1000);
  
  posx = posx + (xspeed * xdirection);
  posy = posy + (yspeed * ydirection);

        if(posx > width-rad || posx < rad){
    xdirection *= -1;

    }
    
    if(posy > width-rad || posy < rad) {
      ydirection *= -1;


  }
          ellipse(posx,posy,rad, rad);
         

  
     
 }

  
 
