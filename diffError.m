% Code that shows the convergence of first order FD methods for f(x) = e^x.
% Two plots - one that shows the error for different values of h. The other
% that shows the error on a log log plot.

exact_value = exp(1);
h = zeros(1,65);
error = zeros(1,65);
for j=1:65
    h(j) = 1/2^(j-1);
    computed_value = (exp(1+h(j)) - exp(1))/h(j);
    error(j) = abs(computed_value - exact_value);
end

figure(1);
semilogx(h,error,h,error, 'o'); 
xlabel('step size, h')
ylabel('Abs. Err.')

figure(2);
loglog(h,error,h,error,'o');
xline(sqrt(eps), '--b');
xlabel('step size, h')
ylabel('Abs. Err.')
