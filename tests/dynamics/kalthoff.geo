l = 100.;
w = 100;
a = 25;

h  = 20;
h2 = h/3;

Point(1)  = {0,0,0,h};
Point(2)  = {l,0,0,h};
Point(3)  = {l,w,0,h2};
Point(30)  = {0.5*l,w,0,h2};
Point(4)  = {0,w,0,h};
Point(5)  = {0,a,0,h};
Point(6)  = {l,a,0,h2};
Point(7)  = {50,a,0,h2};

Line(1) = {1,2};
Line(2) = {2,6};
Line(3) = {6,3};
Line(4) = {3,30};
Line(40) = {30,4};
Line(5) = {4,5};
Line(6) = {5,1};
Line(7) = {5,7};
Line(8) = {7,6};

Line Loop(1) = {1,2,-8,-7,6};
Line Loop(2) = {3,4,40,5,7,8};

Plane Surface(1) = {1};
Plane Surface(2) = {2};

Physical Line(111)  = {1}; // bottom edge
Physical Line(222)  = {2,3}; // right
Physical Line(333)  = {4,40}; // left edge
Physical Line(444)  = {5}; // left edge
Physical Line(555)  = {6}; // left edge

Physical Surface(999) = {2}; 
Physical Surface(888) = {1}; 