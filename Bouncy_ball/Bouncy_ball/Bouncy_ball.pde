int rad = 60;
  float BoxSizeX = 1000;
  float posx, posy;
  
  
  float xspeed = 4.3;  //Sætter x-hastigheden
  float yspeed = 4.5; //Sætter y-hastigheden
  
  int xdirection = 1;  //Sætter direktionen for x 
  int ydirection = 1;  // Sætter direktionen for y
  

  
void setup() {
  size(1000,1000);
  noStroke();
  frameRate(30);
  posx = width/2;  //Definerer hvor at ellipsen starter i x-koordinatet
  posy = height/2;  //Definerer hvor at ellipsen starter i y-koordinatet

  ellipseMode(RADIUS);
    
  }
  
 void draw() {
   
  background(51);
  rect(1000,1000,1000,1000);
  
  posx = posx + (xspeed * xdirection); // Definerer positionen af x-koordinatet
  posy = posy + (yspeed * ydirection); // Definerer positionen af y-koordinatet

        if(posx > width-rad || posx < rad){
    xdirection *= -1;

    }
    
    if(posy > width-rad || posy < rad) {
      ydirection *= -1;


  }
          ellipse(posx,posy,rad, rad);
         

  
     
 }

  
 
