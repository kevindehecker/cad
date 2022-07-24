$fn=100;
r_gat=54.5/2;
k = 0.01;
wand_dikte_in_gat = 1.75;
hoogte_in_gat = 15;

r_lamp=80/2;
wand_dikte_lamp = (r_lamp - r_gat)+wand_dikte_in_gat;
hoogte_lamp = 13;

wand_dikte_lamp_rand = r_gat-wand_dikte_in_gat;
hoogte_lamp_rand = 2;
r_inner_rand = 46 / 2;


difference(){
    cylinder(hoogte_in_gat,r_gat,r_gat);
    translate([0,0,-k/2])
    cylinder(hoogte_in_gat+k,r_gat-wand_dikte_in_gat,r_gat-wand_dikte_in_gat);
}
translate([0,0,-hoogte_lamp])
difference(){
    cylinder(hoogte_lamp,r_lamp,r_lamp);
    translate([0,0,-k/2])
    cylinder(hoogte_lamp+k,r_lamp-wand_dikte_lamp,r_lamp-wand_dikte_lamp);
}

translate([0,0,-hoogte_lamp-hoogte_lamp_rand])
difference(){
    cylinder(hoogte_lamp_rand,r_lamp,r_lamp);
    translate([0,0,-k/2])
    cylinder(hoogte_lamp_rand+k,r_inner_rand,r_inner_rand);
}
