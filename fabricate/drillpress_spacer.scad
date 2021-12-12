$fn=50;
W = 14;
H = 7;
D = 8;

module washer(){
  difference(){
    cylinder(d=25.5, h=4);
    translate([0, 0, -1])cylinder(d=14.5, h=5);
  }
}

difference(){
  union(){
    translate([-W/2, -W/2, -3])cube([W, W, H + 3]);
  }
  translate([0, 0, -10])cylinder(h=100, d=D);
  translate([0, 0, -4])washer();
}
  

