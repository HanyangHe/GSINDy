function [T,N]=TNspace_EulerSphere_Ideal(X)
% v1*x1+v2*x2+v3*x3=0

x1=X(1,1);
x2=X(2,1);
x3=X(3,1);

N=X/norm(X);

if x1~=0
    v1_2=1;
    v1_3=0;
    v1_1=-x2/x1;
    v1=[v1_1;v1_2;v1_3];
    v2=cross(v1,X);
elseif x2~=0
    v1_1=1;
    v1_3=0;
    v1_2=-x1/x2;
    v1=[v1_1;v1_2;v1_3];
    v2=cross(v1,X);

elseif x3~=0
    v1_1=1;
    v1_2=0;
    v1_3=-x1/x3;
    v1=[v1_1;v1_2;v1_3];
    v2=cross(v1,X);

end
T=[v1/norm(v1) v2/norm(v2)];