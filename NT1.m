FS = 18;
LW = 2;

format long
clc

f = @(x) 2*cosh(x/4) - x;
disp('>> f = @(x) 2*cosh(x/4) - x;')
xvals = linspace(-10, 15, 100);
figure(1), clf
axes('FontSize', FS), hold on
plot(xvals, f(xvals), 'LineWidth', LW)
plot([-10, 15], [0, 0], 'k', 'LineWidth', LW)
grid on

drawnow
%print -depsc Plot1.eps

df = @(x) 0.5*sinh(x/4) - 1;
disp('>> df = @(x) 0.5*sinh(x/4) - 1;')

pause

x = Newton(f, df, -10);
disp('>> x = Newton(f, df, -10);')

for k = 1:length(x)
  figure(1), semilogy(x(1:k), f(x(1:k)), 'ro', 'LineWidth', LW)
  disp(sprintf('     %17.13f, %17.13f', x(k), f(x(k))))
  pause
end

x = Newton(f, df, 15);
disp(' ')
disp(' ')
disp('>> x = Newton(f, df, 15);')

for k = 1:length(x)
  figure(1), semilogy(x(1:k), f(x(1:k)), 'mo', 'LineWidth', LW)
  disp(sprintf('     %17.13f, %17.13f', x(k), f(x(k))))
  pause
end
