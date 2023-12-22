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

difference() {
    union() {
        cylinder(h = Conduit_Diameter+Shell_Thickness, d=Conduit_Diameter+Shell_Thickness*2);
        translate([-(Conduit_Diameter+Shell_Thickness*2)/2,0,0]) cube([Conduit_Diameter+Shell_Thickness*2,Conduit_Diameter/2+Shell_Thickness*2,Conduit_Diameter+Shell_Thickness]);
    }
    #translate([0,0,Shell_Thickness]) cylinder(h=Conduit_Diameter+0.01, d=Conduit_Diameter*Printer_Fudge);
    translate([0,-(Conduit_Diameter/2-1),Conduit_Diameter*.5+Shell_Thickness])#rotate([90,0,0]) cylinder(h = Shell_Thickness+2, d=Heatset_Diameter);

}