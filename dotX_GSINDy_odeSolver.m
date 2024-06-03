function dotX=dotX_GSINDy_odeSolver(t,X,n,polyorder,usesine,Coef_GeomSINDy, R, r)

dotX=(CandidateFunVectorOriPolySine(t,X',n,polyorder,usesine)*Coef_GeomSINDy)';

[Ti,~]=TNspace_TorusConstW_Ideal(X, R, r);
Pi=Ti*pinv(Ti'*Ti)*Ti';
dotX=Pi*dotX;