$fn=60;

RodRadius = 2.5;
RodHoleRadius = 2.55;
SwingWidth = 12.5;
SwingMountWidth = SwingWidth + 0.5;


//translate([0, 0, 5]) 
//color("red") rotor();

//translate([0, 30, 0])
color("blue") base();    

//translate([0, -27, 21]) 
//color("yellow") swing();

//translate([-30, 0, 0]) 
//color("green") rod();

//color("pink") base();

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
            translate([-50, -50, 0])
                cube ([100, 100, 5]);        
        
            translate([0, 0, 5])
                cylinder (h = 6, r=4.95);
        } 
        
        translate([-40, -40, 0])
            cylinder (h = 20, r=2, center = true);
        
        translate([-40, 40, 0])
            cylinder (h = 20, r=2, center = true);
        
        translate([40, -40, 0])
            cylinder (h = 20, r=2, center = true);
        
        translate([40, 40, 0])
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
        
        rotate([90, 0, 0]) 
            translate([0, 6.25, -12.5])   
                cylinder(h=15, r=RodHoleRadius);
        
        translate([0, 27.5, 6.25])
            rotate([0, 90, 0])                   
                cylinder (h = 25, r=RodHoleRadius, center = true);  
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


          
        


        
        


