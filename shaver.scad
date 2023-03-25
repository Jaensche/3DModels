$fn=100;

module body()
{
  cube([45, 10, 26], false);

  translate([0,10,16])
    cube([45, 24, 10], false);

   difference() 
  {

  translate([0,24,-24])
    cube([45, 10, 50], false);


  translate([10,40,-12])
    rotate([100,0,0])
      cylinder(h=20,r=4);

  translate([35,40,-12])
    rotate([100,0,0])
      cylinder(h=20,r=4);

  }
}

module shaft()
{
  cylinder(h=18,d=7);
}

shaft();