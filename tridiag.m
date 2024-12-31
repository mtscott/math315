function A = tridiag(a, b, c, n)
    % Create a tridiagonal matrix

    A = diag(a*ones(n-1,1),-1) + diag(b*ones(n,1)) + diag(c*ones(n-1,1),1);
end