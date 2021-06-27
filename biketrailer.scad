// CSG.scad - Basic example of CSG usage

$fn=50;

//*********trailer deel***********
difference() { 
    cylinder(22,11,11);
    translate([0,0,-1])
    cylinder(24,3,3);   
};
translate([0,-3,11])
rotate([90,0,0])
cylinder(20,9,10);
translate([0,-23,11])
rotate([90,0,0])
cylinder(40,10,9);



//*********fiets deel***********

//boven ring
translate([-0,0,22.25])
difference() {
    union() {
        translate([0,-12,0])
        cube([24,24,5]);
        cylinder(5,12,12);
    }
    translate([0,0,-1])
    cylinder(35,3,3);   
}

//onder ring
translate([-0,0,-5.5])
difference() {
    union() {
        translate([0,-12,0])
        cube([24,24,5]);
        cylinder(5,12,12);
    }
    translate([0,0,-1])
    cylinder(35,3,3);   
}

//brug
translate([12,-12,-5.5])
cube([12,24,31]);
echo(version=version());

//snelkoppeling
translate([21,0,25])
rotate([90,0,90])
difference() {
    cylinder(3,12,12);
    translate([0,8,-1])
    cylinder(5,2.5,2.5);
}


