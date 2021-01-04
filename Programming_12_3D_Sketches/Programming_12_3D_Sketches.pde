float rotx, roty;

void setup() {
  size(800, 800, P3D);
  //rotx = radians(45);
  //roty= radians(45);
}

void draw() {
  background(200);
  ball(100, 100, 0, 100);
  ball(200, 300, 0, 100);
  ball(200, 500, 0, 69);
  cube(width/2, height/2, 0, #FF0000, 150);
  cube(300, 100, 0, #FF0000, 150);
  cube(300, 400, 0, #FF0000, 69);
  
  //cube(0, 0, 0, #0000FF, 200);
}

void ball(float x, float y, float z, float size) {
  pushMatrix();
  translate(x,y,z);
  
  rotateX(rotx);
  rotateY(roty);
  //stroke(200,0,0);
  //fill(c);
  noFill();
  strokeWeight(3);
  sphere(size);
  popMatrix();
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();  //Make it so it doesn't stack ontop one another or leak into other code
 translate(x, y, z);
  //noFill();
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  
  fill(c);
  stroke(0);
  strokeWeight(3);
  box(size); //Side length
 //box(200, 200, 200); // Width, height, depth   
 popMatrix();
}

void mouseDragged() {
 rotx += (pmouseY - mouseY)*0.01;
 roty += (pmouseX - mouseX)*-0.01; //Because the x coord. is incrasing, the angle increases so dragging to the right will make the cube rotate left
}
