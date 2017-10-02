F<m> := FunctionField(RationalField(), 1);
PP<x,y,z> := ProjectiveSpace(F, 2);
C := Curve(PP, 2*x^4 - 8*x^2*z^2 + 16*m^2*z^4 + 16*m*z^4 - y^2*z^2);
P0:=C ! [0,1,0];
E, phi:=EllipticCurve(C,P0);
E;
