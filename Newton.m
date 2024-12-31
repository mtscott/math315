function x = Newton(f, df, x0, tol, nmax)
%
%     x = Newton(f, df, x0, tol, nmax);
%
% Use Newton's method to find a root of f(x) = 0.
%
% Input:   f - an anonymous function or function handle for f(x)
%         df - an anonymous function or function handle for f'(x)
%         x0 - an initial guess of the root
%
% Optional Input:
%        tol - a (relative) stopping tolerance
%              default is tol = 1e-8
%       nmax - specifies maximum number of iterations
%              default is nmax = 100
%
% Output:  x - vector containing the iterates x0, x1, ...
%

%
% Check inputs, and set default values:
%
if nargin == 3
  tol = []; nmax = [];
end
if nargin == 4
  nmax = [];
end
if isempty(tol)
  tol = 1e-8;
end
if isempty(nmax)
  nmax = 100;
end

%
% Start Newton iteration
%
x = zeros(nmax + 1, 1);
x(1) = x0;
for n = 1:nmax
  x(n+1) = x(n) - f(x(n)) / df(x(n));
  if ( abs(x(n+1)-x(n)) <= tol*abs(x(n)) )
    break
  end
end
x = x(1:n+1);

