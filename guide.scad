/*

Bypass closet door floor guide
Author: Peter Loron <peterl@standingwave.org>
License: http://creativecommons.org/licenses/by-sa/3.0/

*/
include <./MCAD/boxes.scad>
$fn = 50;

module guide()
{
	union() {
		difference() {
			//baseplate
			translate([60,13,8]) roundedBox([120,26,16],5,true);

			//screw holes
			translate([112,13,-4]) cylinder(25,3,3);
			translate([60,13,-4]) cylinder(25,3,3);
			translate([8,13,-4]) cylinder(25,3,3);
		}

		//tongues
		translate([18,0,0]) tongue();
		translate([60,0,0]) tongue();
		translate([102,0,0]) tongue();
	}
}

module tongue() {
	hull() {
		translate([0,2,16]) cylinder(34,3,2);
		translate([0,13,16]) cylinder(34,7,5);
		translate([0,24,16]) cylinder(34,3,2);
	}
}

guide();