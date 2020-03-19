//NEW WORLD ORDER PUNKS Pachinko
//Autor: Servín Villegas Antonio (342794)
//Fecha: 19.03.2020

/* Hola profesor, sé que no es lo que prometí 
y tengo demasiados errores. Aunque tengo razones
personales, no hay pretextos para esto, pero
trataré de recuperarme para el 3ero.
Gracias y cuídese mucho :) */

import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import processing.sound.*;
SoundFile cancion;

Box2DProcessing box2d;
ArrayList<Plataforma> plataformas;
ArrayList<Bola> bolas;
ArrayList<Obstaculo> obstaculos;
PImage fondo;
PFont tipog;

void setup() {
  size(400,650);
  smooth();
  
  cancion = new SoundFile(this, "pop.wav");
  cancion.loop();
  
  fondo = (loadImage("fondo.png"));

  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -10);
  
  tipog = loadFont("TwCenMT-Italic-48.vlw");
  bolas = new ArrayList<Bola>();
  plataformas = new ArrayList<Plataforma>();
  obstaculos = new ArrayList<Obstaculo>();

  plataformas.add(new Plataforma(0,0,70,1300));
  plataformas.add(new Plataforma(width,0,70,1300));
  plataformas.add(new Plataforma(0,height,900,50));
  plataformas.add(new Plataforma(0,0,900,50));
  
  plataformas.add(new Plataforma((width/4)+15,height,10,150));
  plataformas.add(new Plataforma(2*width/4,height,10,150));
  plataformas.add(new Plataforma((3*width/4)-15,height,10,150));
//---------------------------------------------------------------------------->
  obstaculos.add(new Obstaculo(width/2,height/2+(height/4),12,12));
  
  obstaculos.add(new Obstaculo(width/2-(width/4),height/2+(height/4),12,12));
  obstaculos.add(new Obstaculo(width/2+(width/4),height/2+(height/4),12,12));
  
    obstaculos.add(new Obstaculo(0+width/8,height/2+(height/4),12,12));
  obstaculos.add(new Obstaculo(width-width/8,height/2+(height/4),12,12));
  
  obstaculos.add(new Obstaculo(width/2-(width/8),height/2+(height/4),12,12));
  obstaculos.add(new Obstaculo(width/2+(width/8),height/2+(height/4),12,12));
//---------------------------------------------------------------------------->
  obstaculos.add(new Obstaculo(width/2,height/2-(height/4),12,12));
  
  obstaculos.add(new Obstaculo(width/2-(width/4),height/2-(height/4),12,12));
  obstaculos.add(new Obstaculo(width/2+(width/4),height/2-(height/4),12,12));
  
    obstaculos.add(new Obstaculo(0+width/8,height/2-(height/4),12,12));
  obstaculos.add(new Obstaculo(width-width/8,height/2-(height/4),12,12));
  
  obstaculos.add(new Obstaculo(width/2-(width/8),height/2-(height/4),12,12));
  obstaculos.add(new Obstaculo(width/2+(width/8),height/2-(height/4),12,12));
//---------------------------------------------------------------------------->
  obstaculos.add(new Obstaculo(width/2,height/2,12,12));
  
  obstaculos.add(new Obstaculo(width/2-(width/4),height/2,12,12));
  obstaculos.add(new Obstaculo(width/2+(width/4),height/2,12,12));
  
    obstaculos.add(new Obstaculo(0+width/8,height/2,12,12));
  obstaculos.add(new Obstaculo(width-width/8,height/2,12,12));
  
  obstaculos.add(new Obstaculo(width/2-(width/8),height/2,12,12));
  obstaculos.add(new Obstaculo(width/2+(width/8),height/2,12,12));
//---------------------------------------------------------------------------->
  obstaculos.add(new Obstaculo(width/2-(width/16),height/2-(height/8),12,12));
  obstaculos.add(new Obstaculo(width/2+(width/16),height/2-(height/8),12,12));
  
  obstaculos.add(new Obstaculo(width/2-3*(width/16),height/2-(height/8),12,12));
  obstaculos.add(new Obstaculo(width/2+3*(width/16),height/2-(height/8),12,12));
  
  obstaculos.add(new Obstaculo(width/2-5*(width/16),height/2-(height/8),12,12));
  obstaculos.add(new Obstaculo(width/2+5*(width/16),height/2-(height/8),12,12));
//---------------------------------------------------------------------------->
  obstaculos.add(new Obstaculo(width/2-(width/16),height/2+(height/8),12,12));
  obstaculos.add(new Obstaculo(width/2+(width/16),height/2+(height/8),12,12));
  
  obstaculos.add(new Obstaculo(width/2-3*(width/16),height/2+(height/8),12,12));
  obstaculos.add(new Obstaculo(width/2+3*(width/16),height/2+(height/8),12,12));
  
  obstaculos.add(new Obstaculo(width/2-5*(width/16),height/2+(height/8),12,12));
  obstaculos.add(new Obstaculo(width/2+5*(width/16),height/2+(height/8),12,12));
//---------------------------------------------------------------------------->
}

void draw() {
  background(50);
  image(fondo,0,0);

  box2d.step();

textAlign(CENTER, CENTER);
 fill (random(0,255), random(0,255), random(0,255));
 textFont(tipog);
  textSize(40);
 text ("New World Order", width/2, 70);
  textSize(30);
 text ("Punks Pachinko", width/2, 100);
 
  fill (random(50,100), random(150,255), random(50,100));
  textSize(20);
 text ("WIN", width/4-30, height-60);
 
   fill (random(150,255), random(50,100), random(450,100));
  textSize(17);
 text ("LOOSE", width/4+60, height-60);
 //---------------------------------------------------------------------------->
   fill (random(50,100), random(150,255), random(50,100));
  textSize(20);
 text ("WIN", 3*(width/4)-60, height-60);
 
   fill (random(150,255), random(50,100), random(450,100));
  textSize(17);
 text ("LOOSE", 3*(width/4)+30, height-60);
 

  for (Plataforma limite: plataformas) {
    limite.display();
  }
 
    for (Obstaculo limite: obstaculos) {
    limite.display();
  }

  for (Bola b: bolas) {
    b.display();
  }
  
image(fondo,0,0);

}
void mousePressed() {
  Bola p = new Bola(mouseX,mouseY);
  bolas.add(p);
}
