
$fn = 100; 

module porsche()
{
  difference()
  {
    union()
    {
      cylinder(h=1, r=12.5, center=false);
      cylinder(h=25, r=11, center=false);
    }
    translate([0,0,-1])
      cylinder(h=32, r=10.3, center=false);
    
    
    translate([-15,-1,-1])
      cube([10,2,33]);
  }
  
  
}

porsche();
