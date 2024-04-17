class Escenario{
  private PImage escenario;
  private color atardecer;
  private PVector posicion;
  
  public Escenario(PVector posicion){
    escenario = loadImage("EscenarioJ.png");
    atardecer = color (255, 135, 0);
    this.posicion = posicion;
  }
  
  public void mostrar(){
    tint(atardecer);
    imageMode(CORNER);
    image(escenario, 0, 0, width, height - 60);
    
    while (this.posicion.y <= height){
      while(this.posicion.x <= width){
        stroke(0);
        fill(125, 75, 0);
        rect(this.posicion.x, this.posicion.y, 40, 30);
        this.posicion.x += 40;
     }
     this.posicion.x = -20;
     this.posicion.y += 30;
   } 
    
  }
}
