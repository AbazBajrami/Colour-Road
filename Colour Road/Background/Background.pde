void setup()
{
  size(500,600);
}


void draw()
{
  drawBackground( 100, 0);
}


void drawBackground( int ROAD,  int GRASS)
                   {         
                    //Grey - The road itself
                                        for (int i = 0; i <= 2 ; i++)
                                            { 
                                             fill(105,105,105);
                                             stroke(0);
                                             strokeWeight(2);
                                        
                                             rect(-1,ROAD,501,149); // The x axis is -1 and the y axis is 501 because if it was 0 the outline on the left and right would show
                                             ROAD = ROAD + 250;     // Also the height is 149 because for some reason the stroke won't show if it's 150
                                            }
                                        
                                        
                  
                             
                    //White Lines
                                 for (int WL = -40; WL < 700; WL = WL + 150)
                                     {
                                      fill(255);
                                      noStroke();
                                                  for(int WLY = 170; WLY < 600; WLY = WLY + 250)
                                                     {
                                                      rect(WL,WLY,100,8);
                                                     }   
                   }     
                   
                   
                    //Grass
                           for (int i = 0; i <= 3 ; i++)
                               {
                                fill(44,176,55);
               
                                rect(0,GRASS,500,100);
                                GRASS = GRASS + 250;
                               }
                   }
                   
