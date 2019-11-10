l = 48.;
w = 3.;

h = 1.;

Point(1) = {0,-w,0,h};
Point(2) = {l,-w,0,h};
Point(3) = {l,w,0,h};
Point(4) = {0,w,0,h};
Point(5) = {0.5*l,-w,0,h};
Point(6) = {0.5*l,w,0,h};

Line(1) = {1,5};
Line(2) = {5,2};
Line(3) = {2,3};
Line(4) = {3,6};
Line(5) = {6,4};
Line(6) = {4,1};
Line(7) = {5,6};

Line Loop(1) = {1,7,5,6};
Line Loop(2) = {2,3,4,-7};

Plane Surface(1) = {1};
Plane Surface(2) = {2};

Transfinite Line{1,5,2,4} = 33;
Transfinite Line{3,7,6}   = 9;

Transfinite Surface{1} = {1,5,6,4};
Transfinite Surface{2} = {5,2,3,6};

//Recombine Surface{1,2};

Physical Line(333)  = {6};
Physical Point(444)  = {3};

Physical Surface(888) = {1};
Physical Surface(999) = {2};
