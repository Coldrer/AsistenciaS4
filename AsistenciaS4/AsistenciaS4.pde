//int nubes;

private Escenario jungla;
private Guardabosques player;
private Pajaro halcon;

public void setup(){
  size (800, 660);
  
  jungla = new Escenario();
  player = new Guardabosques();
  player.setPosicion(new PVector(width/2, 538));
  player.setVelocidad(new PVector(40, 0));
  halcon = new Pajaro(new PVector(50, 100), new PVector(10,0));
  
}

public void draw(){
  
  //for(int nubes = 1; nubes <= 5; nubes++){ //**Fallo en la realizacion de Nubes**//
    //noStroke();
    //fill(#FFFFFF);
    //ellipse(random(240, 650), random(175, 375), random(100, 150), 50);
  //}
  
  jungla.mostrar();
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
