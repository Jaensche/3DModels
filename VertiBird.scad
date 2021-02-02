$fn=60;

RodRadius = 2.5;
RodHoleRadius = 2.5;
SwingWidth = 12.5;
SwingMountWidth = 12.5;

//translate([0, 0, 5]) 
//color("red") rotor();

//translate([0, 30, 0])
//color("blue") base();    

//translate([0, -30, 0]) 
//color("yellow") swing();

//translate([-30, 0, 0]) 
color("green") plug();

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
            };
            
            translate([0, 0, 6.25])
                cylinder (h = 12.5, r = 25, center = true);
        }
            
        translate([0, 0, 0])
            cylinder (h = 5, r=9.5, center = true);                           
        
        translate([0, 0, 37.5])
            rotate([0,90,0])                            
                cylinder (h = SwingMountWidth, r=25, center = true);      
  
        translate([-SwingMountWidth/2, -25, 20])
            cube([SwingMountWidth, 50, 50]);
          
        translate([0, 0, 27.5])
            rotate([0,90,0])
                cylinder (h = 75, r=RodHoleRadius, center = true);
    };     
}
    
module base()
{      
    difference()
    {  
        translate([-50, -50, 0])   
            cube([100, 100, 12.5]);            
        
        translate([0, 0, 10])   
            cylinder (h = 25, r = RodHoleRadius, center = true);
                  
        translate([0, 0, 0]) 
            cylinder (h = 7.5, r = 12.5, center = true);
    }
}    
    
module swing()
{       
    difference()
    {          
        translate([-SwingWidth / 2, 0, 0])  
            cube([SwingWidth, 35, 12.5]);            
        
        rotate([90, 0, 0]) 
            translate([0, 6.25, -12.5])   
                cylinder(h=15, r=RodHoleRadius);
        
        translate([0, 27.5, 6.25])
            rotate([0, 90, 0])                   
                cylinder (h = 25, r=RodHoleRadius, center = true);  
    } 
}

module plug()
{       
    union()
    {
        translate([0, 0, 2.5]) 
            cylinder (h = 5, r = 12.5, center = true);  
     
        translate([0, 0, 12.5])
                rotate([0,0,0])
                    cylinder (h = 25, r=RodRadius, center = true);
   }       
}


          
        


        
        


