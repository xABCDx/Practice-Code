float locx;
float locy;
float velx;
float vely;
int sz = 30;
float accx;
float accy;

void setup(){
 size(700,500); 
 locx = width/2;
 locy = height/2;
 velx = 0;
 vely = 1;
 accx = 0;
 accy = .1;
 
}


void draw(){
 ellipse(locx, locy, sz,sz);

//adding acceleration to velocity to increase veelocity
 velx += accx;
 vely += accy;
 
 //add velocity to location to change the position
 locx += velx;
 locy += vely;

 if(locy + sz/2 >=  height){
  
  locy = height - sz/2; 
 }
}
