% Machine Epsilon Code

v = 2;

fprintf("Is 1 + v > 1?\n\n")
for i = 1:100
    v = v/2;
    fprintf("Iteration " + i + ":\t" + (1+v >1) + "\n" )
end
