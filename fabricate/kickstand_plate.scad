/*
don't PLA will be strong enough.
*/

module p8020(len){
  difference(){
    cube([len, 80, 30]);
    translate([-1, 10 - 3, 0])cube([len + 2, 6, 6]);
    translate([-1, 30 - 3, 0])cube([len + 2, 6, 6]);
    translate([-1, 50 - 3, 0])cube([len + 2, 6, 6]);
    translate([-1, 70 - 3, 0])cube([len + 2, 6, 6]);
  }
}
module kick(){
  translate([0, -1, -18])
  difference(){
    cube([30, 80, 20]);
    translate([0, 15, -1])rotate([0, 0, 9])cube([40, 3, 100]);
    translate([-1, 65-3, -1])rotate([0, 0, -9])cube([40, 3, 100]);
    translate([2, -1, 0]) cube([3, 100, 100]);
    translate([25, -1, 0])cube([3, 100, 100]);
    translate([ 8, -1, 0])cube([2, 100, 100]);
    translate([20, -1, 0])cube([2, 100, 100]);
  }
}
//kick();

difference(){
  translate([0, 1, 0])cube([30, 78, 5]);
  translate([-1, 0, 3])p8020(102);
  kick();
  translate([15, 40, -1])cylinder(h=100, d=10, $fn=100);
}
/*
*/
