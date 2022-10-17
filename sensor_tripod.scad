$fn = 100; 
   
strength = 0.2;
radius_bottom = 10;
radius_top = 2;

module leg()
{
  translate([0,-25,0])
    rotate([-20,0,0])    
      rotate([0,0,45])
        cube([3,3,45]);
}

module sensor_holder()
{
  difference()
  {
    tripod();   
    
    //becher innen
    translate([0,0,40])
      cylinder(h=50,r=8.5);
    
    translate([0,0,-3])
      cylinder(h=3.6,r=19);
  } 
}

module tripod()
{
  leg();
    
  rotate([0,0,120])
    leg();
    
  rotate([0,0,240])
    leg();
  
  translate([0,0,-2.5])
    cylinder(h=3,r=25.65);
  
  // becher aussen
  translate([0,0,30])
      cylinder(h=20,r=10.5);
}


sensor_holder();
