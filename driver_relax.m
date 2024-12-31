clear; clc; close all;
%A = fd3d(100,50, 1,0,0,0,-1);
A = randn(100);
A = 0.25 * A + 0.25 * A' + 10 * eye(100);
b = rand(size(A,1),1);
x = zeros(size(A,1),1);
niter = 100;

D = diag(diag(A));
LU = A - D;
GJ = -D\ LU;
rGJ = abs(eigs(GJ,1));

wopt = 2 / (1 + sqrt(1-rGJ.^2));

[xj, resj] = jacobi(A,b,x,niter);
[xfgs, resfgs] = forward_gs(A,b,x,niter);
%[xbgs, resbgs] = backward_gs(A,b,x,niter);
%[xsor, ressor] = forward_sor(A,b,x,0.98,niter);

x = 1:niter;
figure(1);
semilogy(x,resj, x,resfgs,'linewidth',4.5); %,x,resbgs,x,ressor)
title('Comparing Convergence of Iteration Schemes, shift = 2 (MTS)')
legend('Jacobi', 'F Gauss-Seidel')%, 'B Gauss-Seidel', 'SOR')
xlabel('iteration')
ylabel('residual norm')