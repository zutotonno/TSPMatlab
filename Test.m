%Clear console
clc;
%Populate with cities
createWorkSpace;
mutationRate = 985; %0.015
%evolve 1000 generations
for evolve = 1: 1000
    evolvePopulation;
end
[val2,idxPop2] = min([population2.distance]);
disp('Final Dinstance');
disp(val2);
tour = population2(1).tour;
disp('Tour');
for i = 1:N
   disp(tour(i).loc);
end