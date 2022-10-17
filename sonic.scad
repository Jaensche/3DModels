$fn = 100; 
   
module magnet()
{
  difference()
  {
    cylinder(h=7,d=19);
    
    translate([0,0,-1])
      cylinder(h=5,d=15);   
    
    translate([0,9,-4])
      cylinder(h=5,d=20);
  }
  
  translate([0,0,7])
    difference()
    {      
      cylinder(h=5,d=9);
      
      translate([0,0,0])
        cylinder(h=6,d=5);
      
      translate([-10,-1.5,0])
        cube([20,3,6]);
    }
}

module bar()
{
  difference()
  {
    cube([60,5,14]);
    
    translate([2,1,7])
     cube([56,3,11]);
    
    translate([0,-1,-1])
      cube([16,7,7]);
    
    translate([-1,-1,12])
      cube([14,7,7]);
    
    translate([8,2.5,6])
      cylinder(h=7,d=5); 
 
    translate([57.5,-1,0])
      rotate([0,20,0])
        cube([5,7,15]);
    
    translate([12,2.5,11.8])
      rotate([45,0,0])
        cube([46,8,8]);
        
    translate([57.9,-3,12])
      cube([5,10,5]);
  } 
  
  translate([30,0,1])
    cylinder(h=11,d=3);
  
  translate([30,5,1])
    cylinder(h=11,d=3);
  
  translate([50,5,1])
    cylinder(h=11,d=3);
  
  translate([50,0,1])
    cylinder(h=11,d=3);
}

module turntable()
{
  difference()
  {
    cylinder(h=2,d=32);
    
    translate([-3.25,-1,-8])
      cube([6.5,2,10]);
    
    translate([-1,-3.25,-8])
      cube([2,6.5,10]);
  }
}

module shaft()
{  
  translate([-2.75,-1,0])
    cube([5.5,2,10]);
    
  translate([-1,-2.75,0])
    cube([2,5.5,10]);
}

module sonic()
{ 
  translate([0,-2.5,1])
    bar();
  
  translate([8,0,1])
    magnet();
  
  translate([40,0,0])
    turntable();
  
  translate([-10,0,0])
    shaft();
}

sonic();
