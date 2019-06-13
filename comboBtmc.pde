/*Diego Alejandro Gutierrez - 6000326
 Jhon Suarez - 6000344
 Leonardo Santana - 6000229
 */

void setup() { 
  size(400, 400);
  background(255);
  fill(0);
  b.crear("Martin por favor", 50, 30, 23, 25,20,156,46); //Lo crea en pantalla
}
R_btm b=new R_btm() ; //Crea una clase del boton
void draw() {
  
  b.a = b.modif(b.a); //Funcion de lectura
}
class R_btm {
  int x1, y1;
  int radio1;
  int r,g,b;
  int a=0;
  R_btm() {
    
  }
  void crear(String a, int x, int y, int tamletra, int radio,int red,int green,int blue) {
    fill(255);
    x1=x;
    y1=y;
 
    radio1=radio;
    //rect(x1-25-radio1/2,y1-8-radio1/2,x1-25+radio1/2,y1-8+radio1/2);
    stroke(red,green,blue);
    ellipse(x-25, y-8, radio, radio);
    fill(red,green,blue);
    r=red;
    g=green;
    b=blue;
    textSize(tamletra);
    text(a, x, y);
  }
  int modif(int a) {
    println(x1+"  "+y1+"  "+radio1);
    
    if ((pmouseX>=x1-25-radio1/2 && pmouseX<=x1-25+radio1/2 && pmouseY<=y1-8+radio1/2 && pmouseY>=y1-8-radio1/2) && mousePressed == true) {
      println(x1+"  "+y1+" "+a);
      
      if(a==1){
        stroke(r,g,b);
      fill(r,g,b);
      ellipse(x1-25, y1-8, radio1-12, radio1-12);
      a=0;
      }
      else{
      if(a==0){
      fill(255);
      stroke(255);
      ellipse(x1-25, y1-8, radio1-12, radio1-12);
      a=1;
      }
      }
    }
    return a;
  }
}