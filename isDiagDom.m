function flag = isDiagDom(A)
    flag = 0;
    d = diag(A);    % diagonal entries
    nd = abs(A - diag(d));     % non-diagonal entries
    sum_nd = sum(nd,2);

    if  min(d - sum_nd') > 0
        flag = 1;
    end

end