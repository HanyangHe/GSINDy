function cost=GSINDy_training_Proj_version(decisionV,dotXref,XtrainMatrix,Tbox,polyTermNum,polyorder,usesine,NORM)

numP=size(dotXref,1);
n=size(dotXref,2);
Coef_matrix=reshape(decisionV,polyTermNum,n);
cost=0;
for i=1:numP
    P=Tbox{i}*Tbox{i}';
    dotX=dotXref(i,:)';
    Library=poolData(XtrainMatrix(:,i)',n,polyorder,usesine)';
    if NORM==1
    cost=cost+norm(dotX-P*Coef_matrix'*Library,1);% L1 norm
    elseif NORM==2
    cost=cost+norm(dotX-P*Coef_matrix'*Library,2);% L2 norm
    end
end