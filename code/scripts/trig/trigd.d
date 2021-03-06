import std.stdio : writeln;

template Declare(string fun)
{
	enum string Declare = "double " ~ fun ~ "_(double* x);";
}

extern(C){
	mixin(Declare!"sin");
	mixin(Declare!"cos");
	mixin(Declare!"tan");
	mixin(Declare!"atan");
}

template Wrap(string fun)
{
	enum string Wrap = "double " ~ fun ~ "(double x)\n{\n    return " ~ fun ~ "_(&x);\n}";
}


mixin(Wrap!"sin");
mixin(Wrap!"cos");
mixin(Wrap!"tan");
mixin(Wrap!"atan");

/* To Compile:
** gfortran -c trigf.f90
** ldc2 -oftrig trigd.d trigf.o && ./trig
*/

void main(){
	double pii = 1;
    immutable double pi = 4*atan(pii);
    assert(sin(pi/2) == 1);
	assert(cos(0) == 1);
	assert(tan(0) == 0);
	writeln("Yay!");
}
