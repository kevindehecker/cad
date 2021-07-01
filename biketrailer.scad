// CSG.scad - Basic example of CSG usage

$fn=50;

//*********trailer deel***********
difference() { 
    cylinder(22,11,11);
    translate([0,0,-1])
    cylinder(24,3.5,3.5);   
};
translate([0,-5,11])
rotate([90,0,0])
cylinder(20,9,10);
translate([0,-25,11])
rotate([90,0,0])
cylinder(60,10,9);



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
    cylinder(35,3.5,3.5);   
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
    cylinder(35,3.5,3.5);   
}

//brug
translate([12,-12,-5.5])
cube([12,24,31]);
echo(version=version());

//snelkoppeling
translate([17,-12,25])
cube([7,24,5]);
translate([17,0,30])
rotate([90,0,90])
difference() {
    cylinder(7,12,12);
    translate([0,6,-1])
    cylinder(5,3,3);
}

