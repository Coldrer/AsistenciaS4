class Pajaro{
  private PVector posicion;
  private PImage ave;
  private PVector movimiento;
  
  public Pajaro(){
    ave = loadImage("Pajaro.jpg");
  }
  
  public Pajaro(PVector posicion, PVector movimiento){
    this.posicion = posicion;
    this.movimiento = movimiento;
    this.ave = loadImage("Pajaro.jpg");
  }
  
  public void representar(){
    noTint();
    imageMode(CENTER);
    image(ave, posicion.x, posicion.y, 100, 100);
  }
  
  public void mover(){
    this.posicion.x += this.movimiento.x;
    if(this.posicion.x >= width - 50){
      this.movimiento.x *= -1;
      this.ave = loadImage("Pajaro2.jpg");
    }else if(this.posicion.x <= 50){
      this.movimiento.x *= -1;
      this.ave = loadImage("Pajaro.jpg");
    }
  }
  
}
