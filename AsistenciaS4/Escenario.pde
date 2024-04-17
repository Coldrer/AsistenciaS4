class Escenario{
  private PImage escenario;
  private color atardecer;
  private int coordX, coordY;
  
  public Escenario(){
    escenario = loadImage("EscenarioJ.png");
    atardecer = color (255, 135, 0);
    coordX = 0;
    coordY = 600;
  }
  
  public void mostrar(){
    tint(atardecer);
    imageMode(CORNER);
    image(escenario, 0, 0, width, height - 60);
    
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
    
  }
}
