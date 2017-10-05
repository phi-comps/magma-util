Q := RationalField();
K<m> := FunctionField(Q); // field of rational fractions in 1 variable over m
R<t> := PolynomialRing(K);
L<fm> := ext<K | t^2 - (m^2 + m)>; // extend K with \sqrt{m^2 + m}
PP<x,y,z> := ProjectiveSpace(L, 2);
C := Curve(PP, 2*x^4 - 8*x^2*z^2 + 16*m^2*z^4 + 16*m*z^4 - y^2*z^2);
P0 := C ! [0, 4*fm, 1]; // choose new point at infinity
E, phi := EllipticCurve(C, P0);
phi; // transformation
