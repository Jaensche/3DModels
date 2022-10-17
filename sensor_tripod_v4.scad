$fn = 100; 
   
strength = 0.2;
radius_bottom = 10;
radius_top = 2;

module leg()
{
  translate([-0.5,-6,0])
    rotate([-30,0,0])
        cube([1,1,10]);
}

module sensor_holder()
{
  difference()
  {
    tripod();   
    
    translate([0,0,6])
      cylinder(h=5,r=1.5);
  } 
}

module tripod()
{
  leg();
    
  rotate([0,0,120])
    leg();
  
  translate([10,0,0])
  rotate([0,0,120])
  
    cube([1,1,10]);
    
  rotate([0,0,240])
    leg();
    
  translate([0,0,0])
      cylinder(h=10,r=2);
}

module head()
{  
  difference()
  {
    translate([0,0,0])
      cylinder(h=5,r=2);
    
    translate([0,0,3])
      cylinder(h=2.5,r=1.5);
  }
}


difference()
{
  
  
  sensor_holder();
  
  translate([0,0,-0.5])
    cylinder(h=1,r=6);
}

translate([10,0,0])
  head();
