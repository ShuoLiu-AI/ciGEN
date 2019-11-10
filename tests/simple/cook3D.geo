h = 2;
t = 5;

nx = 17;
ny = 17;

Point(1) = {0,0,0,h};
Point(2) = {48,44,0,h};
Point(3) = {48,60,0,h};
Point(4) = {0,44,0,h};

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,1};

Line Loop(1) = {1,2,3,4};

Plane Surface(1) = {1};

//Transfinite Line{1,3} = nx;
//Transfinite Line{2,4} = ny;

//Transfinite Surface{1} = {1,2,3,4};
//Recombine Surface{1};

Extrude {0,0,t} {
   Surface{1}; //Layers{1};// Recombine;
}

//Recombine Surface {26};
//Compound Volume(889) = {1};

Physical Volume(27) = {1};
Physical Surface(28) = {25};
Physical Surface(29) = {17};
