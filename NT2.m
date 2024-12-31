clear 
FS = 18;
LW = 2;

format long
clc

f = @(x) sign(x).*abs(x).^(1/3)+ 1.25;
df = @(x) 1./(3*(x.^2).^(1/3));

figure(1), clf
axes('FontSize', FS), hold on
xvals = linspace(-15,15, 100);
plot(xvals, f(xvals), 'LineWidth', LW)
plot([-15, 15], [0, 0], 'k', 'LineWidth', LW)
grid on

x = Newton(f, df, -1)

x = Newton(f, df, 1)