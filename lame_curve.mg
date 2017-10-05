Q := RationalField();
PP<x,y,z> := ProjectiveSpace(Q, 2);
m := -7/4;
C := Curve(PP, 2*x^4 + 8*m*x^2*z^2 + 16*m^2*z^4 + 16*m*z^4 - y^2*z^2);
C;
P0 := C ! [1, 3, 1]; // choose new point at infinity
E, phi := EllipticCurve(C, P0);
E;
phi;
Inverse(phi);

