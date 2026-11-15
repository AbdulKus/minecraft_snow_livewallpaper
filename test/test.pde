int numFlakes = 1000;
Snowflake[] flakes = new Snowflake[numFlakes];

void setup() {
  size(900, 1600, P3D);
  
  color winterNight = color(25, 25, 112); // Цвет зимней ночи (похож на темный синий Minecraft)
  background(winterNight);

  for (int i = 0; i < numFlakes; i++) {
    flakes[i] = new Snowflake();
  }
}

void draw() {
  background(25, 25, 112); // Обновляем фон каждый кадр
  lights();

  // Исправляем камеру для охвата всего экрана и корректного падения снега
  camera(width / 2, height / 2, (height / 2.0) / tan(PI * 30.0 / 180.0), width / 2, height / 2, 0, 0, 1, 0);

  for (Snowflake flake : flakes) {
    flake.update();
    flake.display();
  }
}

class Snowflake {
  PVector position;
  float size;
  float speed;
  float rotation;

  Snowflake() {
    reset();
  }

  void reset() {
    position = new PVector(random(-300, width+300), random(-height, 0), random(-1000, 1000)); // Увеличена дальность падения
    size = random(5, 8); // Размер снежинки
    speed = random(1, 3); // Скорость падения
    rotation = random(TWO_PI); // Начальный угол вращения
  }

  void update() {
    position.y += speed;
    if (position.y > height+500) {
      reset();
      position.y = -size;
    }
  }

  void display() {
    pushMatrix();
    translate(position.x, position.y - 400, position.z);
    rotateX(rotation);
    rotateZ(rotation);
    noStroke();
    fill(255);

    // Рисуем снежинку в виде плюсика
    beginShape(QUADS);
    // Горизонтальная полоса
    vertex(-size / 2, -size / 8, 0);
    vertex(size / 2, -size / 8, 0);
    vertex(size / 2, size / 8, 0);
    vertex(-size / 2, size / 8, 0);
    // Вертикальная полоса
    vertex(-size / 8, -size / 2, 0);
    vertex(size / 8, -size / 2, 0);
    vertex(size / 8, size / 2, 0);
    vertex(-size / 8, size / 2, 0);
    endShape();

    popMatrix();
  }
}
