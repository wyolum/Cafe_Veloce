$fn=50;
module guide(h, D){
difference(){
  color("grey")linear_extrude(height=h) import("cable_guide_0.dxf");
  translate([0, 0, -1])
    cylinder(h=h+2, d=D);
}
}
guide(15, 7.5);
//cylinder(h=11, d=6.7);
//cylinder(h=11, d=6.8);

