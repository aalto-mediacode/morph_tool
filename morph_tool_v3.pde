import controlP5.*;
ControlP5 cp5;

// (before this came the first point, controlled by cp1)
// bezierVertex (cpx1, cpy1, cpx2, cpy2, x2, y2)

int side = 150;
int sliderValue = 100;
float ax, ay, bx, by, cx, cy, dx, dy;
float axC, ayC, bxC, byC, cxC, cyC, dxC, dyC;

void setup () {
  size(800,800);
  
  cp5 = new ControlP5(this);
  
  
  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sliderValue' 
  cp5.addSlider("ax")
     .setPosition(50,50)
     .setSize(100,20)
     .setRange(0,400)
     .setValue(side)
     .setColorCaptionLabel(color(0))
     ;
  cp5.addSlider("ay")
     .setPosition(50,75)
     .setSize(100,20)
     .setRange(0,400)
     .setValue(side)
     .setColorCaptionLabel(color(0))
     ;
  cp5.addSlider("bx")
     .setPosition(175,50)
     .setSize(100,20)
     .setRange(0,400)
     .setValue(side)
     .setColorCaptionLabel(color(0))
     ;
  cp5.addSlider("by")
     .setPosition(175,75)
     .setSize(100,20)
     .setRange(0,400)
     .setValue(side)
     .setColorCaptionLabel(color(0))
     ;
  cp5.addSlider("cx")
     .setPosition(300,50)
     .setSize(100,20)
     .setRange(0,400)
     .setValue(side)
     .setColorCaptionLabel(color(0))
     ;
  cp5.addSlider("cy")
     .setPosition(300,75)
     .setSize(100,20)
     .setRange(0,400)
     .setValue(side)
     .setColorCaptionLabel(color(0))
     ;
  cp5.addSlider("dx")
     .setPosition(425,50)
     .setSize(100,20)
     .setRange(0,400)
     .setValue(side)
     .setColorCaptionLabel(color(0))
     ;
  cp5.addSlider("dy")
     .setPosition(425,75)
     .setSize(100,20)
     .setRange(0,400)
     .setValue(side)
     .setColorCaptionLabel(color(0))
     ;
  
    //axC = ayC = bxC = byC = cxC = cyC = dxC = dyC = 200;

  
}

void draw() {
  background(255);
  
  setAx(cp5.get("ax").getValue());
  setAy(cp5.get("ay").getValue());
  setBx(cp5.get("bx").getValue());
  setBy(cp5.get("by").getValue());
  setCx(cp5.get("cx").getValue());
  setCy(cp5.get("cy").getValue());
  setDx(cp5.get("dx").getValue());
  setDy(cp5.get("dy").getValue());
  
  stroke(0,0,0);
  strokeWeight(4);
  fill(0);
  
  pushMatrix();
  translate(400,400);
  
  beginShape();
  vertex(-side, -side);
  
  bezierVertex(-axC, -ayC, bxC, -byC, side, -side);
  
  bezierVertex(cxC, -cyC, dxC, dyC, side, side);
  
  bezierVertex(axC, ayC, -bxC, byC, -side, side);
  
  bezierVertex(-cxC, cyC, -dxC, -dyC, -side, -side);
  endShape();
  popMatrix();
  
  if (keyPressed == true) { 
    save("morph"+"_"+month()+day()+hour()+minute()+second()+".png");
  }
  
  
}





public void setAx(float ax) {
  this.axC = ax;
}
public void setAy(float ay) {
  this.ayC = ay;
}
public void setBx(float bx) {
  this.bxC = bx;
}
public void setBy(float by) {
  this.byC = by;
}
public void setCx(float cx) {
  this.cxC = cx;
}
public void setCy(float cy) {
  this.cyC = cy;
}
public void setDx(float dx) {
  this.dxC = dx;
}
public void setDy(float dy) {
  this.dyC = dy;
}
