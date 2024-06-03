function [T,N]=TNspace_TorusConstW_Ideal(X, R, r)

% torus F=(sqrt(x^2+y^2)-R)^2+z^2-r^2=0

x=X(1,1);
y=X(2,1);
z=X(3,1);

N=[-2*x*(R-sqrt(x^2+y^2))/sqrt(x^2+y^2);-2*y*(R-sqrt(x^2+y^2))/sqrt(x^2+y^2);2*z];
N=N/norm(N);

T=null(N');









% phi=atan2(y/x);
% theta=asin(z/r);
% 
% % [phi, theta] = xyzToUv(x, y, z, R, r);
% 
% % phi=Xangle(1,1);
% % theta=Xangle(2,1);
% 
% % tangent vector
% Tphi = [-(R + r * cos(theta)) * sin(phi); (R + r * cos(theta)) * cos(phi); 0];
% Ttheta = [-r * sin(theta) * cos(phi); -r * sin(theta) * sin(phi); r * cos(theta)];
% Tx=Tphi(1,1)*(-y/(x^2*(1+y^2/x^2)))+Ttheta(1,1)*0;
% Ty=Tphi(2,1)/(x*(y^2/x^2+1))+Ttheta(2,1)*0;
% Tz=Tphi(3,1)*0+Ttheta(3,1)*4/sqrt(1-16*z^2);
% 
% % normal vector
% N = cross(Tphi, Ttheta);
% 
% % normalize
% Tphi=Tphi/norm(Tphi);
% Ttheta=Ttheta/norm(Ttheta);
% T=[Tphi Ttheta];
% N = N / norm(N);

% [~,P]=OffTorusError(X,R,r);
% if N'*(X-P)<0
% N=-N;
% T=-T;
% end

% function [u, v] = xyzToUv(x, y, z, R, r)
%     % calculate u
%     u = atan2(y, x); % belong to [-pi, pi]
%     if u < 0
%         u = u + 2 * pi; % trans u to [0, 2*pi)
%     end
% 
%     % calculate v
%     sin_v = z / r;
%     cos_v = sqrt(1 - sin_v^2); % as sin^2(v) + cos^2(v) = 1
%     v = atan2(real(sin_v), real(cos_v)); % use atan2 make sure v in right quadrant
% 
%     % correct value of v, make sure (R + r*cos(v)) is coinside with the
%     % result of x,y
%     % projected_R = sqrt(x^2 + y^2);
%     % calculated_R = R + r * cos(v);
%     % if abs(projected_R - calculated_R) > 0.1 * r % tolerance is the 10% of tube radius r
%     %     v = 2 * pi - v; % if not match, then v is in another half cycle
%     % end
% end
end

% this code can used to check the function of the algorithm (need to run main fail first)
% seeN=600;
% [T,N]=TNspace_TorusConstW_Ideal(X(:,seeN), R, r)
% 
% figure
% plot3(X(1,:),X(2,:),X(3,:));
% hold on 
% quiver3([X(1,seeN);X(1,seeN)],[X(2,seeN);X(2,seeN)],[X(3,seeN);X(3,seeN)],[T(1,1);T(1,2)],[T(2,1);T(2,2)],[T(3,1);T(3,2)]);
% hold on
% quiver3([X(1,seeN)],[X(2,seeN)],[X(3,seeN)],[N(1,1)],[N(2,1)],[N(3,1)]);
% hold off