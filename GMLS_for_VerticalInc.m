function dXNamb=GMLS_for_VerticalInc(Dist,Ti,Ni,dXTamb,degr,knear,d)
    dXTint=Ti'*dXTamb;

    if d > 1
    index =  generatemultiindex(degr,d); % index is d*term 
    else
    index = 0:1:degr;
    end
    term = size(index,2);
    % ==========Calculate k_mls for prediction=============
    Pm = ones(term,knear); % term*knear
    dX_BOX=Dist;
    for j=1:knear
    dX_TH_BOX(:,j)=Ti'*dX_BOX(:,j);
    end
    for pp = 1:term
        for kk=1:knear
            for aa = 1:d
                Pm(pp,kk) = Pm(pp,kk)*dX_TH_BOX(aa,kk)^index(aa,pp);
            end
        end
    end
    dX_NV_BOX=Ni'*dX_BOX;
    k_mls=dX_NV_BOX*Pm'/(Pm*Pm');

    % ======================predict dX_NV=====================
    P=ones(term,1);
    for pp = 1:term % Calculate Poly terms for dX_TH
        for kk=1:1
            for aa = 1:d
                P(pp,kk) = P(pp,kk)*dXTint(aa,kk)^index(aa,pp);
            end
        end
    end
    dXNint=k_mls*P;
    dXNamb=Ni*dXNint;