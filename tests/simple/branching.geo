l = 3.;
w = l/2;
a = 0.25;

b = w/3;

h  = 0.09;
h2 = h/4;

Point(1)  = {0,-w,0,h};
Point(2)  = {l,-w,0,h};
Point(3)  = {l,w,0,h};
Point(4)  = {0,w,0,h};
Point(5)  = {0,0,0,h2};
Point(6)  = {a,0,0,h2};
Point(7)  = {l,0,0,h2};
Point(8)  = {0,-b,0,h};
Point(9)  = {l,-b,0,h2};
Point(10) = {0,b,0,h};
Point(11) = {l,b,0,h2};

Line(1) = {1,2};
Line(2) = {2,9};
Line(3) = {9,7};
Line(4) = {7,11};
Line(5) = {11,3};
Line(6) = {3,4};
Line(7) = {4,10};
Line(8) = {10,5};
Line(9) = {5,8};
Line(10) = {8,1};
Line(11) = {8,9};
Line(12) = {10,11};
Line(13) = {5,6};
Line(14) = {6,7};

Line Loop(1) = {1,2,-11,10};
Line Loop(2) = {11,3,-14,-13,9};
Line Loop(3) = {4,-12,8,13,14};
Line Loop(4) = {5,6,7,12};

Plane Surface(1) = {1};
Plane Surface(2) = {2};
Plane Surface(3) = {3};
Plane Surface(4) = {4};


Physical Line(111)  = {1}; // bottom edge
Physical Line(222)  = {6}; // top edge
Physical Line(333)  = {10,9,8,7}; // left edge

Physical Surface(888) = {1,4};  // no interface elements
Physical Surface(999) = {2,3};