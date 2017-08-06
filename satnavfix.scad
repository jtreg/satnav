// satnav mount
handlebar = 29;
ball = 17;
post = 40-4;
interior = 22;
post_diam = 10;
handlebar_w = 35;
$fn=40;

/*
difference(){
rotate([0,180,0]) 
main1a();
    nutholes();
        
}
*/

difference(){
    translate([-4,0,-87]) rotate([180,0,0]) 
        main1b();
   nutholes();
}
   

module main1a(){

      difference(){
        main2();
         
        cut();
       
    }
 
}

module main1b(){

      difference(){
        main3();
         
        cut();
       
    }
 
}
module main2()
{

    rotate([90,0,0]) translate ([2,45,-18]) handlebar_end();
        cut();
    
}
module main3()
{
    ball();
    post();
    collar();
        rotate([90,0,0]) translate ([2,45,-18]) handlebar_end(1);
        cut();
    
}

module ball (){
    
        sphere(d=ball);
    }
    
    
module post(){
    
        translate ([0,0,-4]) 
            cylinder(h=post, d= post_diam);
    
    }
    
module handlebar_end(a){
    
    difference(){
        rotate([90,0,0]) translate([0,18,-47])base();
        translate([0,0,-4])color("blue") cylinder(h=handlebar_w+10, d= handlebar);
    }
        difference(){
           
            color("red") cylinder(h=handlebar_w, d= handlebar+14);
            translate([0,0,-4])color("blue") cylinder(h=handlebar_w+10, d= handlebar);
           
        }
    
   }
    
    
module base(){
    
    translate ([0,0,post+15]) cube([70,35,6],true);
    
    }
module cut(){
    translate ([2,0,post+25]) cube([70,45,36],true);
    }
    
module collar(){
       color("black")  translate ([0,0,12]) 
            cylinder(h=post/2, d= post_diam*2);
    
    }
    
module nutholes(){
    nuthole(-30,-8,-160);
    nuthole(-30,8,-150);
    nuthole(26,-8,-150);
    nuthole(26,8,-150);
    }
module nuthole(x,y,z){
    translate ([x,y,z]) cylinder(h=100, d= 5);
    }