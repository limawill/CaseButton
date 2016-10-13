$fn=100;
use<Writescad/write.scad>

union()
{
    difference()
    {
        cube([15,20,15],center=true);
        translate([0,0,-1])
        color("blue")cube([13,18,14],center=true);
              
        translate([6,6.5,-6])
        color("pink")cube([5,5,3],center=true);
        
        translate([-8,-6.5,-6])
        color("pink")cube([5,5,3],center=true);
        
        translate([12.5,-4,-32])
        rotate([0,0,90])
        writecube("IN",[10,20,30],30);
        
        translate([-12.3,4,-32])
        rotate([0,0,-90])
        writecube("OUT",[10,20,30],30);
        
        //Encaixe do motor
        translate([0,0,7])
        color("orange")cube([5,5,5],center=true);
      
    }
  
    difference()
    {
        translate([0,11.5,-7])
        cylinder(h=1, r=5/2, center=true);
        
        translate([0,12,-8])
        cylinder(h=25, r=2/2, center=true);
    }
    difference()
    {
        translate([0,-11.5,-7])
        color("red")cylinder(h=1, r=5/2, center=true);
        
        translate([0,-12,-8])
        cylinder(h=25, r=2/2, center=true);
    }
}
