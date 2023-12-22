/* [Body] */
Shell_Thickness = 5;

/* [Conduit] */

Conduit_Diameter = 18.5;
Conduit_Pocket = 25.4;
Printer_Fudge = 1.02;
/* [Hardware] */ 
Screw_thread = 3;
Heatset_Diameter = 4.2;
//Nut_Wrench_Size = 5.5;
/* Hidden */
//Nut_Radius = Nut_Wrench_Size/sqrt(3);
$fn=36;
difference() {
    union(){
        cylinder(h = Conduit_Diameter*3, d=Conduit_Diameter+(Shell_Thickness*2));
        rotate([0,90,0])cylinder(h = Conduit_Diameter*3, d=Conduit_Diameter+(Shell_Thickness*2),center = true);
    }
    rotate([0,90,0])cylinder(h = Conduit_Diameter*3+.02, d=Conduit_Diameter*Printer_Fudge,center = true);
    translate([0,0,2*Conduit_Diameter])cylinder(h = Conduit_Diameter+0.01, d=Conduit_Diameter*Printer_Fudge);
    translate([0,Conduit_Diameter/2-1,0])#rotate([-90,0,0]) cylinder(h = Shell_Thickness+2, d=Heatset_Diameter);
    translate([0,Conduit_Diameter/2-1,Conduit_Diameter*2.5])#rotate([-90,0,0]) cylinder(h = Shell_Thickness+2, d=Heatset_Diameter); 
}