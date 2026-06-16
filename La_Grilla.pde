class Movil{
  PVector Pos;
  PVector Vel;
  int tamano = 10;

  Movil(float Px, float Py, float Vx, float Vy){
    Pos = new PVector(Px, Py);
    Vel = new PVector(Vx, Vy);
  }

  void Mover(){
  Pos.add(Vel); 
}

  void Mostrar(){
  fill(255);
  circle(Pos.x, Pos.y, tamano); 
}

  void Contener(){
    if(Pos.x > width - tamano/2 || Pos.x < tamano/2){
    Vel.x = Vel.x * -1;
  }
    if(Pos.y > height - tamano/2 || Pos.y < tamano/2){
    Vel.y = Vel.y * -1;
  }
  }
}

Movil [] moviles;
int columnas = 10;
int filas = 10;
int cant = columnas * filas; 

void setup(){
  size(800, 800);
  moviles = new Movil[cant];
  float espacioX = width / (columnas + 1);
  float espacioY = height / (filas + 1);
  int indice = 0; 
  for(int f = 0; f < filas; f++){
    for(int c = 0; c < columnas; c++){
      
      float px = espacioX * (c + 1);
      float py = espacioY * (f + 1); 
      float vx = random(-1, 1); 
      float vy = random(-1, 1);   
      moviles[indice] = new Movil(px, py, vx, vy); 
      indice++; 
    }
  }
}

void draw(){
  background(20); 
  for(int i = 0; i < cant; i++){
    moviles[i].Mover();
    moviles[i].Mostrar();
    moviles[i].Contener();
  }
}
