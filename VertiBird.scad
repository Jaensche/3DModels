$fn=60;

RodRadius = 2.5;
RodHoleRadius = 2.55;
SwingWidth = 12.5;
SwingMountWidth = SwingWidth + 0.5;

StickHole = 5.05;
Stick = 4.95;

//translate([0, 0, 5]) 
//color("red") rotor();

//translate([0, 30, 0])
//color("blue") base();  

//translate([0, -27, 21]) 
//color("yellow") swing();

//translate([-30, 0, 0]) 
//color("green") rod();

//color("pink") base();

//color("black") stick();

//color("red") connector();

color("red") helijoint();

module rotor()
{      
  difference()
  {     
    union()
    {
      difference() 
      {
        translate([0, 0, 12.5])
          sphere(r = 25);
          
        translate([-25, -25, -50])
          cube([50, 50, 50]);
      }
      
      translate([0, 0, 6.25])
        cylinder (h = 12.5, r = 25, center = true);
    }
    
    translate([0, 0, 0])
      cylinder (h = 50, r=5, center = true);
      
     translate([0, 0, -1])
      cylinder (h = 6, r=9.55, center = false);          
        
      
    difference()
    {
      translate([0, 0, 37.5])
        rotate([0,90,0])              
          cylinder (h = SwingMountWidth, r=25, center = true);  
     
      translate([-50/2, 10, 20])
        cube([50, 50, 50]); 
    }    
      
    translate([0, 0, 27.5])
      rotate([0,90,0])
        cylinder (h = 75, r=RodHoleRadius, center = true);
    
    translate([-SwingMountWidth/2, -25, 20])
        cube([SwingMountWidth, 20, 20]); 
  }  
  
     
}
  
module base()
{      
  difference()
  {   
    union()
    {        
      translate([-37.5, -37.5, 0])
        cube ([75, 75, 5]);    
    
      translate([0, 0, 5])
        cylinder (h = 6, r=4.95);
    } 
    
    translate([-25, -25, 0])
      cylinder (h = 20, r=2, center = true);
    
    translate([-25, 25, 0])
      cylinder (h = 20, r=2, center = true);
    
    translate([25, -25, 0])
      cylinder (h = 20, r=2, center = true);
    
    translate([25, 25, 0])
      cylinder (h = 20, r=2, center = true);
  }
}   
  
module swing()
{     
  difference()
  {     
    union()
    {
      translate([0, 30, 6.25])
        rotate([0, 90, 0])           
          cylinder (h = SwingWidth, r=6.25, center = true); 
    
      translate([-SwingWidth / 2, 0, 0])  
        cube([SwingWidth, 30, 12.5]);      
    }    
    
    translate([0, 27.5, 6.25])
      rotate([0, 90, 0])           
        cylinder (h = 25, r=RodHoleRadius, center = true);  
    
    translate([-StickHole/2, -5, 3.5])    
      cube([StickHole, 20, StickHole]);  
  }
}  

module rod()
{     
  union()
  {
    translate([0, 0, 0]) 
      cylinder (h = 1, r = 12.5, center = false);  
   
    translate([0, 0, 1])
        rotate([0,0,0])
          cylinder (h = 42, r=RodRadius, center = false);
   }     
}

module stick()
{
  cube([180, Stick, Stick], center = true);  
}

module connector()
{     
  difference()
  {         
    translate([-SwingWidth / 2, 0, 0])  
      cube([SwingWidth, 30, 12.5]);   
    
    translate([-StickHole/2, -5, 3.5])    
      cube([StickHole, 20, StickHole]);  
    
    translate([-StickHole/2, -5, 3.5])    
      cube([StickHole, 20, StickHole]); 
  }
} 

module helijoint()
{
  length = 35;
  width = 20;
  depth = 2;
  border = 2;
  
  union()
  { 
    difference()
    {
      translate([0, 0, 0])
        cube([length, width, depth]);  
      
      translate([border, border, -1])
        cube([length/3, width/3, depth*2]);
      
      translate([length-length/3-border, border, -1])
        cube([length/3, width/3, depth*2]);
      
      translate([border, width-width/3-border, -1])
        cube([length/3, width/3, depth*2]);
      
      translate([length-length/3-border, width-width/3-border, -1])
        cube([length/3, width/3, depth*2]);
    } 
    
    translate([length/2, width/2, 5/2])
      rotate([0,90,0])
        cylinder (h = 3, r=2, center = false);
  }
}


      
    


    
    


