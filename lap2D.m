% 2D Laplacian on unit square
% Problem: u_xx + u_yy = 0 on [0,1] x [0,1]
%          u = 0 on (x,0)
%          u = 0 on (x,1)
%          u = 100 on (0,y)
%          u = 0 on (1,y)

m = 100;                             % Gridpoints  
h = 1/(m+1);
x = 0:h:1;                          % Plot
y = x;

A = fd3d(m,m,1,0,0,0,0);            % Constructing 5 point stencil
f = zeros(m*m,1);                   % RHS in Au = f
f (1:m) = 100;       % boundary conditions: g = 1  

tic
u = A \ f;      % GEPP solve; there are better ways
t1 = toc;

tic
[u2,~] = jacobi(A,f,zeros(10000,1),50);
t2 = toc;



sol = zeros(m+2);                   % solution for all nodes
sol(2:m+1,2:m+1) = reshape(u2,m,m);  % solution for interior nodes
sol(1:m+2,1) = 100;                 % Boundary counditions


figure(1);
surface(x,y,sol);
colorbar
xlabel('Depth of Lake'); ylabel('Lake Coast, adjacent to factory');
title('Concentration of pollutant ')


figure(2);
contour(x,y,sol,100);

xlabel('Depth of Lake'); ylabel('Lake Coast, adjacent to factory');
title('Concentration of pollutant ')