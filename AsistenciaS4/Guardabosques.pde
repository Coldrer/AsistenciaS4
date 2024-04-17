class Guardabosques{
  private PVector posicion;
  private PImage imagen;
  private PVector movimiento;
  
  // CONSTRUCTOR 
  public Guardabosques(){
    imagen = loadImage("GuardaBosques.png");
  }
  
  public void representar(){
    noTint();
    imageMode(CENTER);
    image(imagen,posicion.x, posicion.y, 75, 125);
  }

  public void mover(int direccion){
    if(direccion == 0){
      this.posicion.x -= this.movimiento.x;
      imagen = loadImage("GuardaBosques2.png");
      if(this.posicion.x <= 0){
        this.posicion.x +=40;
      }
    }
    
    if(direccion==1){
      this.posicion.x += this.movimiento.x;
      imagen = loadImage("GuardaBosques.png");
      if(this.posicion.x >= width){
        this.posicion.x -= 40;
      }
    }
    
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public void setPosicion(PVector posicion){
    this.posicion = posicion;
  }
  
  public PVector getMovimiento(){
    return this.movimiento;
  }
  
  public void setMovimiento(PVector movimiento){
    this.movimiento = movimiento;
  }
  
}
