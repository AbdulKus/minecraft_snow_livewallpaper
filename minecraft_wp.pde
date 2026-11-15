int numFlakes = 1000;
Snowflake[] flakes = new Snowflake[numFlakes];
PImage txLogUD, txLogA;
PImage txGrassUD, txGrassA;
PImage txGreenA;
PShape tree;
void setup() {
  size(displayWidth, displayHeight, P3D);
  txLogA = loadImage("log_a.png");
  txLogUD = loadImage("log_ud.png");
  txGrassUD = loadImage("grass_ud.jpg");
  txGrassA = loadImage("grass_a.jpg");
  txGreenA = loadImage("green_a.png");
  tree = loadShape("DiamondSword.obj");
  tree.scale(5);
  color winterNight = color(25, 25, 112);
  background(winterNight);

  for (int i = 0; i < numFlakes; i++) {
    flakes[i] = new Snowflake();
  }
}

void draw() {
  
  background(15, 15, 50);
  ambientLight(30, 30, 30);
  //lights();
  directionalLight(200, 200, 200, 0, 1, -1);

  //camera(width / 2, height / 2, (height / 1.8) / tan(PI * 30.0 / 180.0), width / 2, height / 2, 0, 0, 1, 0);
  pushMatrix();
  //lights();
  for (Snowflake flake : flakes) {
    flake.update();
    flake.display();
  }
  popMatrix();
  emissive(0,0,0);
  //noLights();
  if (tree != null) {
    pushMatrix();
    translate(width / 2, height / 1.4, -2000 / (height/750));
    translate(200, 300, 430);
    rotateY(1.2);
    shape(tree);
    popMatrix();
  }
  pushMatrix();
  translate(width / 2, height / 1.4, -2000 / (height/750));
  //rotateX(frameCount * 0.001);
  //rotateY(frameCount * 0.001);
  rotateY(1);
  texturedCube(200, txLogUD, txLogUD, txLogA);
  translate(200, 200, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, 200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -400);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 200, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, 200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, 200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, 200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, -600, -400);
  texturedCube(200, txLogUD, txLogUD, txLogA);
  //translate(0, -200, 0);
  //texturedCube(202, txLogUD, txLogUD, txLogA);
  translate(0, -200, 0);
  texturedCube(200, txLogUD, txLogUD, txLogA);
  translate(0, -200, 0);
  texturedCube(202, txLogUD, txLogUD, txLogA);
  translate(0, -200, 0);
  texturedCube(202, txLogUD, txLogUD, txLogA);
  translate(0, -200, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(200, 200, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(-400, 0, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(200, 0, 200);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(0, 0, -400);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(200, 200, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(-200, 0, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(-200, 0, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(0, 0, 200);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(0, 0, 200);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(200, 0, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(200, 0, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(0, 0, -200);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(0, 200, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(0, 0, -200);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(0, 0, 400);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(-200, 0, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(0, 0, -400);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(-200, 0, 0);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(0, 0, 200);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(0, 0, 200);
  texturedCube(200, txGreenA, txGreenA, txGreenA);
  translate(400, 1000, 400);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(600, 000, 1000);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(600, 0, 1200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-600, 200, 200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(-200, 0, 0);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(0, 0, -200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  translate(800, 0, 1200);
  texturedCube(200, txGrassUD, txGrassUD, txGrassA);
  popMatrix();
  pushMatrix();
  applyFog();
  popMatrix();
}

class Snowflake {
  PVector position;
  float size;
  float speed;
  float rotation, rotX, rotY, rotZ;
  float swayOffset; 
  int type;

  Snowflake() {
    reset();
  }

  void reset() {
    position = new PVector(random(-220, width + 220), random(-height, -350), random(-1200, 600)); //600 Увеличена дальность п��дения
    size = random(15, 25); // Размер снежинки
    speed = random(1, 3); // корость падения
    rotation = 1; // диапазон поворота от -num до num
    swayOffset = random(TWO_PI); // Случайное начальное смещение для ветра
    type = int(random(4)); // Случайный тип снежинки
    rotX = random(-rotation, rotation);
    rotY = random(-rotation, rotation);
    rotZ = random(-rotation, rotation);
  }

  void update() {
    position.y += speed;
    position.x += sin(frameCount * 0.01 + swayOffset) * 2;
    position.z += cos(frameCount * 0.01 + swayOffset) * 1;

    if (position.y > height + 500) {
      reset();
      position.y = -size;
    }
  }

  void display() {
    pushMatrix();
    translate(position.x, position.y - 400, position.z);
    rotateX(rotX);
    rotateZ(rotZ);
    rotateY(rotY);
    noStroke();
    fill(255);
    emissive(80,80,80);

    switch (type) {
      case 0:
        drawPlusSnowflake();
        break;
      case 1:
        drawCrossSnowflake();
        break;
      case 2:
        drawDiagonalSnowflake();
        break;
      case 3:
        drawSingleDotSnowflake();
        break;
    }

    popMatrix();
  }

  void drawPlusSnowflake() {
    drawPixelPattern(new int[][] {
      {0, 1, 0},
      {1, 1, 1},
      {0, 1, 0}
    });
  }

  void drawCrossSnowflake() {
    drawPixelPattern(new int[][] {
      {1, 0, 1},
      {0, 1, 0},
      {1, 0, 1}
    });
  }

  void drawDiagonalSnowflake() {
    drawPixelPattern(new int[][] {
      {0, 1, 0},
      {1, 0, 1},
      {0, 1, 0}
    });
  }

  void drawSingleDotSnowflake() {
    drawPixelPattern(new int[][] {
      {0, 0, 0},
      {0, 1, 0},
      {0, 0, 0}
    });
  }

  void drawPixelPattern(int[][] pattern) {
    float pixelSize = size / 3.0;
    for (int y = 0; y < pattern.length; y++) {
      for (int x = 0; x < pattern[y].length; x++) {
        if (pattern[y][x] == 1) {
          pushMatrix();
          translate((x - 1) * pixelSize, (y - 1) * pixelSize, 0);
          rect(0, 0, pixelSize, pixelSize);
          popMatrix();
        }
      }
    }
  }
}


void texturedCube(float size, PImage textureUp, PImage textureDown, PImage textureAround) {
  beginShape(QUADS);
  textureMode(NORMAL);
  texture(textureAround);

  // Передняя грань
  vertex(-size / 2, -size / 2, size / 2, 0, 0);
  vertex(size / 2, -size / 2, size / 2, 1, 0);
  vertex(size / 2, size / 2, size / 2, 1, 1);
  vertex(-size / 2, size / 2, size / 2, 0, 1);

  // Задняя грань
  vertex(size / 2, -size / 2, -size / 2, 0, 0);
  vertex(-size / 2, -size / 2, -size / 2, 1, 0);
  vertex(-size / 2, size / 2, -size / 2, 1, 1);
  vertex(size / 2, size / 2, -size / 2, 0, 1);

  // Левая грань
  vertex(-size / 2, -size / 2, -size / 2, 0, 0);
  vertex(-size / 2, -size / 2, size / 2, 1, 0);
  vertex(-size / 2, size / 2, size / 2, 1, 1);
  vertex(-size / 2, size / 2, -size / 2, 0, 1);

  // Правая грань
  vertex(size / 2, -size / 2, size / 2, 0, 0);
  vertex(size / 2, -size / 2, -size / 2, 1, 0);
  vertex(size / 2, size / 2, -size / 2, 1, 1);
  vertex(size / 2, size / 2, size / 2, 0, 1);

  endShape();

  // Верхняя грань
  beginShape(QUADS);
  texture(textureUp);
  vertex(-size / 2, -size / 2, -size / 2, 0, 0);
  vertex(size / 2, -size / 2, -size / 2, 1, 0);
  vertex(size / 2, -size / 2, size / 2, 1, 1);
  vertex(-size / 2, -size / 2, size / 2, 0, 1);
  endShape();

  // Нижняя грань
  beginShape(QUADS);
  texture(textureDown);
  vertex(-size / 2, size / 2, size / 2, 0, 0);
  vertex(size / 2, size / 2, size / 2, 1, 0);
  vertex(size / 2, size / 2, -size / 2, 1, 1);
  vertex(-size / 2, size / 2, -size / 2, 0, 1);
  endShape();
}

void applyFog() {
  noLights();
  fill(50, 50, 80, 15);
  noStroke();

  for (int z = -3000; z < 200; z += 30) {
    pushMatrix();
    translate(0,-150, z);
    translate(0, 0, 0);
    rect(-width*2, height-20, width * 5, height);
    popMatrix();
  }
}
