class Movil{
  PVector Pos;
  PVector Vel;
  int tamano = 10;


  Movil(){
    Pos = new PVector(random(width), random(height));
    Vel = new PVector(1, 1);
  }


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
int cant = 10;

void setup(){
  size(800, 800);
  moviles = new Movil[cant];
  float espacioX = width / (cant + 1);
  
  for(int i = 0; i < cant; i++){

    float Px = espacioX * (i + 1);
    float Py = height / 2; 
    float Vx = random(-2, 2);
    float Vy = random(-2, 2);
    moviles[i] = new Movil(Px, Py, Vx, Vy);
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
