$fn=50;
module guide(D){
difference(){
  color("grey")linear_extrude(height=9) import("cable_guide_0.dxf");
  translate([0, 0, -1])
    cylinder(h=11, d=D);
}
}
guide(5.3);
//cylinder(h=11, d=6.7);
//cylinder(h=11, d=6.8);

