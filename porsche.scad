
$fn = 100; 

module porsche()
{
  difference()
  {
    union()
    {
      cylinder(h=1, r=13.2, center=false);
      cylinder(h=25, r=12.25, center=false);
    }
    translate([0,0,-1])
      cylinder(h=32, r=11, center=false);
    
    translate([-14,-0.25,-0.5])
      cube([8,0.5,33]);
  }
  
  
}

porsche();
