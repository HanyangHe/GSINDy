function Xi = sparsifyDynamics_modify(Tbox,Theta,dXdt,lambda,n)

% Tbox 1-by-N cells save the tangent space for each train point
% Theta N-by-k is the library vector (N is the points number, k is the candidate function number)
% dXdt N-by-n is the row form of dotX (n is the ambient space dimension)

k=size(Theta,2);
N=size(Theta,1);

Mlib=Theta';

Rtheta=[];
for i=1:N
    box_row=[];
    P=Tbox{i}*Tbox{i}';
    for j=1:k
        box_row=[box_row Mlib(j,i)*P];
    end
    Rtheta=[Rtheta;box_row];
end

dotX=dXdt';%n*N
RdotX=reshape(dotX,N*n,1);%Nn*1

% find initial solution
vecMcoef=Rtheta\RdotX;%kn*1

% use sequential thresholded least-squares (STLS) to find the sparsity solution
for iter=1:10 % maximum iteration is 10
    vecMcoef(abs(vecMcoef) < lambda) = 0;  % use threshold
    nz_idx = vecMcoef ~= 0;  % non-zero index
    if sum(nz_idx) == 0
        break;  % if there is no non-zero element, break out
    end
    vecMcoef(nz_idx) = Rtheta(:, nz_idx) \ RdotX;  % only use non-zero coefficient to solve new solution
end

Mcoef=reshape(vecMcoef,n,k);
Xi=Mcoef';%k*n










% % compute Sparse regression: sequential least squares
% Xi = Theta\dXdt;  % initial guess: Least-squares
% 
% % lambda is our sparsification knob.
% for k=1:10
%     smallinds = (abs(Xi)<lambda);   % find small coefficients
%     Xi(smallinds)=0;                % and threshold
%     for ind = 1:n                   % n is state dimension
%         biginds = ~smallinds(:,ind);
%         % Regress dynamics onto remaining terms to find sparse Xi
%         Xi(biginds,ind) = Theta(:,biginds)\dXdt(:,ind); 
%     end
% end