//Character
           int CharX = 235; //Character x axis and character y axis
           int CharY = 550;

//Game Background
                 PImage img;

//Enemies
         //Road One (Top road)
                              //Top Lane
                              int x1 = -50;  // X axis of the 2 enemies
                              int x2 = 300;  
                              
                              int y1 = 135;
                              
                              //Bottom Lane
                              int x3 = 150;  
                              int x4 = 450; 
                              
                              int y2 = 215;
         
         
         
         //Road Two (Bottom road)
                                //Top Lane
                                int x1b = 150;  
                                int x2b = 450;  
         
                                int y3 = 385;
                                
                                //Bottom Lane
                                int x3b = -40;  
                                int x4b = 300;
                              
                                int y4 = 465;
                                
         


void setup()
{
  size(500,600);
  
  //Game Background
                   img = loadImage("GameBackground.PNG");
}


void draw()
{

  //Game Background
                  image(img,0,0,500,600);
  
  frameRate(60);
  
  //If you collide with the enemy you turn red and the the game is over
                  if( (dist (CharX, CharY, x1, y1) < 40)    || //The hit boxes are 40 (radius of enemy = 50) because if it was 50 the player would die without touching the enemy
                      (dist (CharX, CharY, x2, y1) < 40)    ||
                      (dist (CharX, CharY, x3, y2) < 40)    ||
                      (dist (CharX, CharY, x4, y2) < 40)    ||
                      (dist (CharX, CharY, x1b, y3) < 40)   ||
                      (dist (CharX, CharY, x2b, y3) < 40)   ||
                      (dist (CharX, CharY, x3b, y4) < 40)   ||
                      (dist (CharX, CharY, x4b, y4) < 40)             
                    )
                   
                    {
                     fill(255,0,0);
                     noLoop();
                     background(0);  
                     textAlign(CENTER);
                     textSize(40);
                     text("Game Over",width/2,height/2);
                    }
  //Character is green
                  else 
                   {
                    fill(0,255,0);
                   }
                   
  //If you pass through all your enemies and reach the end you win.
                  if(CharY < 85)
                    {
                      noLoop();
                      fill(0,255,0); // This fill is for the text on the screen
                      background(255);
                      textAlign(CENTER);
                      textSize(40);
                      text("You Win",width/2,height/2);
                    }
  
  //Character           
            ellipse(CharX,CharY,30,30);
  
  
  //Enemies : Start         ( I could have used a method to draw all of these ellipses but I wasn't able to make them move so I left them all like this.)
                  fill(255,0,0); //red
                  
                 //Top Road
                           //Top Lane
                                     ellipse(x1,y1,50,50); // These 2 ellipses loop forever on the same road.
                                     ellipse(x2,y1,50,50);
                           
                                     x1 = x1 + 5;  // These ellipses are moving to the right which is why you add the 5.
                                     x2 = x2 + 5;
                           
                                     if(x1 == width + 50) // When the ellipses reach the end of the road they reposition to the start. This is repeated for all the enemies.
                                       { 
                                        x1 = x1 - 650;
                                       }
                             
                                     if(x2 == width + 50)
                                       { 
                                        x2 = x2 - 650;
                                       }
                           
                           //Bottom Lane
                                        ellipse(x3,y2,50,50);
                                        ellipse(x4,y2,50,50);
                          
                                        x3 = x3 - 5; // These ellipses are moving to the left which is why you take away 5.
                                        x4 = x4 - 5;  
                           
                                        if(x3 == -50)
                                          { 
                                           x3 = x3 + 650;
                                          }
                             
                                        if(x4 == -50)
                                          { 
                                           x4 = x4 + 650;
                                          }
                          
                 //Bottom Road
                              //Top Lane
                                        ellipse(x1b,y3,50,50);
                                        ellipse(x2b,y3,50,50);
                              
                                        x1b = x1b + 5; 
                                        x2b = x2b + 5;
                              
                                        if(x1b == width + 50)
                                          { 
                                           x1b = x1b - 650;
                                          }
                             
                                        if(x2b == width + 50)
                                          { 
                                           x2b = x2b - 650;
                                          }
                               
                              //Bottom Lane
                                           ellipse(x3b,y4,50,50);
                                           ellipse(x4b,y4,50,50);
                          
                                           x3b = x3b - 5; 
                                           x4b = x4b - 5;  
                           
                                           if(x3b == -50)
                                             { 
                                              x3b = x3b + 650;
                                             }
                             
                                           if(x4b == -50)
                                             { 
                                              x4b = x4b + 650;
                                             }
          
  //Enemies : End
 
  
  //Movements : Start
                   //Movement W
                   if(keyPressed)
                     { 
                      if(key == 'w' || key == 'W')
                        {
                          CharY = CharY - 10;
                        }
                     }
    
                   //Movement A
                   if(keyPressed)
                     { 
                      if(key == 'a' || key == 'A')
                        {
                          CharX = CharX - 10;
                        }
                     }
    
                   //Movement S
                   if(keyPressed)
                     { 
                      if(key == 's' || key == 'S')
                        {
                         CharY = CharY + 10;
                        }
                     } 
                     
                   //Movement D
                   if(keyPressed)
                     { 
                      if(key == 'd' || key == 'D')
                        {
                         CharX = CharX + 10;
                        }
                     }
  //Movements : End
  
}
