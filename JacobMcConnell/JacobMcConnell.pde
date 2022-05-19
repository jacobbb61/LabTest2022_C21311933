// Name: Jacob McConnell
// SN: C21311933
// final lab test, 2022

float x, y;

float ix=-100;
float y1=-100;
int iy;

float tl,nl;
int tx=-100;

float cl;

float sl,sn,sx;
void setup()
{
  size(800, 800);
}

void draw() {
  println(tl + "tl");
  println(tx + "tx");
  println(x + "x");

  background(0);
  
  if(cl<1){stroke(255,0,0);}
  if((cl>=1)&&(cl<2)){stroke(0,255,0);}
  if((cl>=2)&&(cl<=3)){stroke(255,0,255);}
  
  
  change();
  circle();
  incir();
  toplines();
  sidelines();
}

void change() {//////////////////////////////// randomiser 
  if (keyPressed)
  {

    if ( key == 'a') {
      x = random(0, 5); // num of big circle
      y=random(0, 1.5); // chance of small circle
      y1=random(0, iy); // randomise the location of small circle inside the number of big circles
      tl=random(0, 1.5); // chance of top lines with eyes
      nl=random(0,5); // num of top lines with eyes
      cl=random(0,3); // randomise color
      sl=random(0, 1.5); // chance of sideways lines
      sn=random(0,5); // num of sideways lines
    }
  }
}

void circle() { /////////////////////////// big main circles 
  noFill();
  if ( x <= 1) {
    
    ellipse(400, 400, 50, 50);
  }
  if (( x >= 1)&&(x<2)) {
    
    ellipse(400, 425, 50, 50);
    ellipse(400, 375, 50, 50);
  }
  if (( x >= 2)&&(x<3)) {
    
    ellipse(400, 450, 50, 50);
    ellipse(400, 400, 50, 50);
    ellipse(400, 350, 50, 50);
  }
  if (( x >= 3)&&(x<4)) {
   
    ellipse(400, 475, 50, 50);
    ellipse(400, 425, 50, 50);
    ellipse(400, 375, 50, 50);
    ellipse(400, 325, 50, 50);
  }
  if (( x >= 4)&&(x<=5)) {
    
    ellipse(400, 500, 50, 50);
    ellipse(400, 450, 50, 50);
    ellipse(400, 400, 50, 50);
    ellipse(400, 350, 50, 50);
    ellipse(400, 300, 50, 50);
  }
}

void incir() { ///////////////////////// inner small circle, changes location randomly between the number of big circles


  ellipse(400, ix, 20, 20);
  if (y >1) {
    ix=-100;
  }
  if ((y<=1)&&( x <= 1))
  {
    ix = 400;
  }
  if ((y<=1)&&( x >= 1)&&(x<2))
  {
    iy = 2;
    if (y1 <=1) {
      ix = 425;
    } else {
      ix=375;
    }
  }
  if ((y<=1)&&( x >= 2)&&(x<3))
  {
    iy=3;
    if (y1 <=1) {
      ix = 450;
    }
    if ((y1 <1)&&(y<=2)) {
      ix = 400;
    }
    if (y1 >2) {
      ix = 350;
    }
  }
  if ((y<=1)&&( x >= 3)&&(x<4))
  {
    iy=4;
    if (y1 <=1) {
      ix = 475;
    }
    if ((y1 <1)&&(y<=2)) {
      ix = 425;
    }
    if ((y1 >2)&&(y1<=3)) {
      ix = 375;
    }
    if (y1 >3) {
      ix = 325;
    }
  }
  if ((y<=1)&&( x >= 4)&&(x<=5))
  {
    iy=5;
    if (y1 <=1) {
      ix = 500;
    }
    if ((y1 <1)&&(y<=2)) {
      ix = 450;
    }
    if ((y1 >2)&&(y1<=3)) {
      ix = 400;
    }
    if ((y1 >3)&&(y1<=4)) {
      ix = 350;
    }
    if (y1 >4) {
      ix = 300;
    }
  }
}

void toplines() { //////////////////////////////// top lines, with the eyes
  if (nl<1){
  line(400, tx, 400, tx-50);    // one line
  ellipse(400,tx-50,10,10);}
  
  if ((nl<2)&&(nl>=1)){
    line(400, tx, 350, tx-50);  // two lines
    line(400, tx, 450, tx-50);
    ellipse(400+50,tx-50,10,10);
    ellipse(400-50,tx-50,10,10);}
    
     if ((nl<3)&&(nl>=2)){
    line(400, tx, 350, tx-50);  // three lines
    line(400, tx, 450, tx-50);
    ellipse(400+50,tx-50,10,10);
    ellipse(400-50,tx-50,10,10);
    line(400, tx, 400, tx-50);
     ellipse(400,tx-50,10,10);}
     
      if ((nl<5)&&(nl>=3)){
    line(400, tx, 350, tx-50);  // four lines
    line(400, tx, 450, tx-50);
    ellipse(400+50,tx-50,10,10);
    ellipse(400-50,tx-50,10,10);
    line(400, tx, 350, tx); 
    line(400, tx, 450, tx);
    ellipse(400+50,tx,10,10);
    ellipse(400-50,tx,10,10);}
    
    
    
    
  if (tl>1){tx=-100;}
  if ((tl<=1)&&( x <= 1)) {tx=400;}
  if ((tl<=1)&&( x >= 1)&&(x<2)) {tx=375;}
  if ((tl<=1)&&( x >= 2)&&(x<3)) {tx=350;}
  if ((tl<=1)&&( x >= 3)&&(x<4)) {tx=325;}
  if ((tl<=1)&&( x >= 4)&&(x<=5)) {tx=300;}
}

void sidelines(){ ////////////////////////////////// sideways lines

  if(sl<=1){
  if((sn<=1)&&( x <= 1)){
    line(425,400,450,400);line(375,400,350,400);} //one set of lines
  if((sn>1)&&(sn<=2)&&( x >= 1)&&(x<2)){
    line(425,425,450,425);line(375,425,350,425);
    line(425,375,450,375);line(375,375,350,375);}//two set of lines
  if((sn>2)&&(sn<=3)&&( x >= 2)&&(x<3)){
    line(425,400,450,400);line(375,400,350,400);
    line(425,450,450,450);line(375,450,350,450);
    line(425,350,450,350);line(375,350,350,350);}//three set of lines
  if((sn>3)&&(sn<=4)&&( x >= 3)&&(x<4)){
    line(425,425,450,425);line(375,425,350,425);
    line(425,375,450,375);line(375,375,350,375);
    line(425,475,450,475);line(375,475,350,475);
    line(425,325,450,325);line(375,325,350,325);}//four set of lines
  if((sn>4)&&(sn<=5)&&( x >= 4)&&(x<=5)){
    line(425,400,450,400);line(375,400,350,400);
    line(425,450,450,450);line(375,450,350,450);
    line(425,350,450,350);line(375,350,350,350);
    line(425,500,450,500);line(375,500,350,500);
    line(425,300,450,300);line(375,300,350,300);}//five set of lines
  } 
}
