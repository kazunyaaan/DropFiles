import controlP5.*;
import sojamo.drop.*;
import org.gicentre.handy.*;

PFont body;
ControlP5 cp5;
SDrop drop;
HandyRenderer hb;

void setup()
{
  size(200, 200);
  frameRate(6);
  body = loadFont("SansSerif-18.vlw");
  
  hb = HandyPresets.createMarker(this);
  hb.setOverrideFillColour(true);
  hb.setOverrideStrokeColour(true);
  hb.setBackgroundColour(color(255));
  hb.setRoughness(2);
  hb.setFillColour(color(230));
  hb.setStrokeColour(color(120,120,120));
  hb.setFillWeight(3);
  
  cp5 = new ControlP5(this);
  drop = new SDrop(this);

  cp5.addButton("SelectFilesBotton")
    .setPosition(width/2-30, height/2+20)
      .setCaptionLabel("Select Files") 
        .setSize(60, 20)
          ;

  textFont(body, 18);
  smooth();
}

void draw()
{
  background(255);

  hb.rect(10, 10, width-20, height-20);

  fill(0, 200);
  textAlign(CENTER, CENTER);
  text("Drop files here", width/2, height/2-20);
  text("or", width/2, height/2+3);
}
