A = fd3d(48,1,1,0,0,0,0);
b = zeros(48,1);
b(2) = 2;

x = A\b;

X = [0,x',0];

figure(1);
plot(0:1/49:1,X,'linewidth',4)
xlabel('Channel location (miles)')
ylabel('Pollutant Amount (pounds)')
title('Pollution in water channel')