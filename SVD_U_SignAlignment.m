function output=SVD_U_SignAlignment(U)
% Sign standerlized - The maximum abs value of each column be positive
MaxAbs=max(abs(U));
for i=1:size(MaxAbs,2)
    if U(find(abs(U(:,i))==MaxAbs(1,i),1),i)<0
        U(:,i)=-U(:,i);      
    end
end
output=U;