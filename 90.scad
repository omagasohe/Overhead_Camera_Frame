/* [Body] */
Shell_Thickness = 5;

/* [Conduit] */
Conduit_Diameter = 18.5;
Printer_Fudge = 1.02;
/* [Hardware] */ 
Screw_thread = 3;
Heatset_Diameter = 4.2;
/* [Hidden] */
$fn=36;

difference(){
    union(){    
        difference() {//Verticle
                cylinder(h = Conduit_Diameter*5, d = Conduit_Diameter+(Shell_Thickness*2));
                translate([-(Conduit_Diameter/2+Shell_Thickness),0,0]) rotate([0,-45,0]) translate([0,0,-Conduit_Diameter/2-Shell_Thickness+0.01]) cube([Conduit_Diameter*8,Conduit_Diameter+Shell_Thickness*2,Conduit_Diameter+Shell_Thickness*2],center=true);
            }
        difference() {//Horizontal
                translate([-(Conduit_Diameter/2)-Shell_Thickness,0,+Conduit_Diameter/2+Shell_Thickness]) rotate([0,90,0])cylinder(h = Conduit_Diameter*5, d = Conduit_Diameter+(Shell_Thickness*2));
                translate([-(Conduit_Diameter/2+Shell_Thickness),0,0]) rotate([0,-45,0]) translate([0,0,(Conduit_Diameter+2*Shell_Thickness)/2-.01]) cube([Conduit_Diameter*8,Conduit_Diameter+Shell_Thickness*2,Conduit_Diameter+2*Shell_Thickness],center=true);
                
            }
    }
    translate([0,0,3*Conduit_Diameter]) cylinder(h=2*Conduit_Diameter+0.01, d=Conduit_Diameter*Printer_Fudge);
    translate([0,Conduit_Diameter/2-1,Conduit_Diameter*3.5])#rotate([-90,0,0]) cylinder(h = Shell_Thickness+2, d=Heatset_Diameter);
    translate([0,Conduit_Diameter/2-1,Conduit_Diameter*4.5])#rotate([-90,0,0]) cylinder(h = Shell_Thickness+2, d=Heatset_Diameter); 
    translate([2.5*Conduit_Diameter-Shell_Thickness,0,(Conduit_Diameter+Shell_Thickness*2)/2]) rotate([0,90,0]) cylinder(h=2*Conduit_Diameter+0.01, d=Conduit_Diameter*Printer_Fudge);
    translate([Conduit_Diameter*3-Shell_Thickness,Conduit_Diameter/2-1,(Conduit_Diameter+Shell_Thickness*2)/2])#rotate([-90,0,0]) cylinder(h = Shell_Thickness+2, d=Heatset_Diameter);
    translate([Conduit_Diameter*4-Shell_Thickness,Conduit_Diameter/2-1,(Conduit_Diameter+Shell_Thickness*2)/2])#rotate([-90,0,0]) cylinder(h = Shell_Thickness+2, d=Heatset_Diameter); 

}
