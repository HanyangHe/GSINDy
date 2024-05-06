function lib=CandidateFunVector(Xi)

x1=Xi(1,1);
x2=Xi(2,1);
x3=Xi(3,1);

lib=[1 x1 x2 x3 x1^2 x2^2 x3^2 x1*x2 x2*x3 x1*x3];