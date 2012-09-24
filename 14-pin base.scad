/*

14-pin 1" PMT tube socket
Author: Peter Loron <peterl@standingwave.org>
License: http://creativecommons.org/licenses/by-sa/3.0/

*/
$fn = 150;

module base() {
	union() {
		difference() {
			//baseplate
			cylinder(h=6,r=13);

			//central hole
			translate([0,0,-1]) cylinder(r=6,h=8);

			//pin holes
			for (j=[0:1:15]) {
				if(j < 14) {
					rotate((j*360)/15) hole();
				}
			}			
		}

	}
}


module hole() {
	translate([9.55,0,-1]) cylinder(r = 1, h = 8);
}

base();