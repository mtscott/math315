function flag = isSPD(A)
    flag = 0;
    if  min(min(A == A')) == 1
        if eigs(A,1,'sm') > 0
            flag = 1;
        end
    end

end