PImage escenario;
int coordX, coordY, nubes;
color atardecer = color(255, 135, 0);

private Guardabosques player;
private Pajaro halcon;

public void setup(){
  size (800, 660);
  escenario = loadImage("EscenarioJ.png");
  coordX = 0;
  coordY = 600;
  
  player = new Guardabosques();
  player.setPosicion(new PVector(width/2, 538));
  player.setVelocidad(new PVector(40, 0));
  halcon = new Pajaro(new PVector(50, 100), new PVector(10,0));
  
}

public void draw(){
  tint(atardecer);
  imageMode(CORNER);
  image(escenario, 0, 0, width, height - 60);
  //for(int nubes = 1; nubes <= 5; nubes++){ //**Fallo en la realizacion de Nubes**//
    //noStroke();
    //fill(#FFFFFF);
    //ellipse(random(240, 650), random(175, 375), random(100, 150), 50);
  //}
  while (coordY <= height){
    while(coordX <= width){
      stroke(0);
      fill(125, 75, 0);
      rect(coordX, coordY, 40, 30);
      coordX += 40;
    }
    coordX = -20;
    coordY += 30;
  }
  
  player.representar();
  halcon.representar();
  halcon.mover();  
}

public void mousePressed(){
  if (mouseButton == LEFT){
    player.mover(0);
  }else if (mouseButton == RIGHT){
    player.mover(1);
  }
}
