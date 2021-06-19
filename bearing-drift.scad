
outer_diameter = 43.8;
outer_height = 10;
inner_diameter = 32.8;
inner_height = 7;
thread_hole_diameter = 8;

module bearing_drift(out_dia, out_ht, in_dia, in_ht, th_hole_dia) {
    // lower this value if struggling to deal with the object
    $fn=100;

    // calculate the height of the hole through the drift
    function full_height() = out_ht+in_ht;

    difference() {
        union() {
        cylinder(d=out_dia, h=out_ht);
        translate([0,0,out_ht])
            cylinder(d=in_dia, h=in_ht);
    }
    #translate([0,0,0])
        cylinder(d=th_hole_dia, h=full_height());
    }
    
}

bearing_drift(outer_diameter, outer_height, inner_diameter, inner_height, thread_hole_diameter);
