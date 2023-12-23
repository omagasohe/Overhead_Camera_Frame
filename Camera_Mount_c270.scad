/* [Mount]*/
Mount_Diameter = 6.75;
Mount_Tab_Width = 10;
Mount_Gap = 7.5;
Mount_Pin_diameter = 3;
Mount_Pin_Flange = 4.5;
/* [Body] */
Shell_Thickness = 5;

/* [Conduit] */
Conduit_Diameter = 18.5;
Printer_Fudge = .99;
/* [Hardware] */ 
Screw_thread = 3;
Heatset_Diameter = 4.2;
/* [Hidden] */
$fn=36;

difference() {
    union() {
        rotate([0,90,0]) translate([0,0,Mount_Gap/2])cylinder(h = Mount_Tab_Width, d = Mount_Diameter);
        translate([Mount_Gap/2,-Mount_Diameter/2,0]) cube([Mount_Tab_Width,Mount_Diameter,Mount_Diameter]);
        rotate([0,-90,0])translate([0,0,Mount_Gap/2])cylinder(h = Mount_Tab_Width, d = Mount_Diameter);
        translate([-Mount_Tab_Width-Mount_Gap/2,-Mount_Diameter/2,0]) cube([Mount_Tab_Width,Mount_Diameter,Mount_Diameter]);
        translate([-Conduit_Diameter,0,Mount_Diameter/2+Conduit_Diameter/2+Shell_Thickness]) rotate([0,90,0]) cylinder(h= Conduit_Diameter*2, d = Conduit_Diameter+Shell_Thickness*2);

    }
    rotate([0,90,0]) translate([0,0,Mount_Gap/2-.01])cylinder(h = Mount_Tab_Width+0.02, d = Mount_Pin_diameter);
    translate([-Mount_Tab_Width-Mount_Gap/2-.01,-Mount_Pin_Flange/2,-Mount_Pin_diameter/2]) cube([Mount_Tab_Width+0.03,Mount_Pin_Flange*1.01,Mount_Pin_diameter*1.03]);
    translate([-Conduit_Diameter-0.01,0,Mount_Diameter/2+Conduit_Diameter/2+Shell_Thickness]) rotate([0,90,0]) cylinder(h= Conduit_Diameter*2+0.02, d = Conduit_Diameter);
    #translate([-Conduit_Diameter-0.01,-.5,Mount_Diameter/2+Conduit_Diameter/2+Shell_Thickness]) cube([Conduit_Diameter*2+0.02,1,Shell_Thickness+Conduit_Diameter]); 
}
