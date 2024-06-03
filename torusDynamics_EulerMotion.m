function dotAngle=torusDynamics_EulerMotion(t,angle,I1,I2,I3,r,R)

phi=angle(1,1);
theta=angle(2,1);

x1 = (R+r*cos(theta))*cos(phi);
x2 = (R+r*cos(theta))*sin(phi);
x3 = r*sin(theta);

epsilon=1e-4;
zeroThresh=1e-4;

dotx1 = (1/I3-1/I2)*x2*x3;
dotx2 = (1/I1-1/I3)*x1*x3;
dotx3 = (1/I2-1/I1)*x2*x1;


dot_phi= (x1 * dotx2 - x2 * dotx1) / (x1^2 + x2^2);

% if norm(r^2 - x3^2)<zeroThresh
% dot_theta= dotx3 / (sqrt(r^2 - x3^2 + epsilon));
% else
dot_theta= dotx3 / (sqrt(r^2 - x3^2));
% end


dotAngle=[dot_phi; dot_theta];