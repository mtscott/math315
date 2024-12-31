function A = fd3d(nx, ny, nz, alpx, alpy, alpz, dshift)

    % Create tridiagonal matrices tx, ty, tz
    tx = tridiag(-1+alpx, 2, -1-alpx, nx);
    ty = tridiag(-1+alpy, 2, -1-alpy, ny);
    tz = tridiag(-1+alpz, 2, -1-alpz, nz);

    % Compute A using Kronecker products
    A = tx;
    if ny > 1
        A = kron(eye(ny), A) + kron(ty, eye(nx));
        if nz > 1
            A = kron(eye(nz), A) + kron(tz, eye(nx*ny));
        end
    end

    % Subtract dshift times identity matrix from A
    A = A - dshift * eye(nx*ny*nz);
    
end