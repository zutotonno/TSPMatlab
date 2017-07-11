% Here the creation of multiple route starting from the initial pool of
% cities( tourManager)
% population is an array of struct with some tourManager permutations
population = repmat(struct('tour',tourManager,'distance',0,'fitness',0),populationSize,1);
tournamentSize=5;
for i= 2:populationSize
    idx = randperm(N);
    population(i).tour = tourManager(idx);
end
for i= 1:populationSize
    population(i).distance = setDistance(population(i).tour);
end
for i= 1:populationSize
    if(population(i).fitness==0)       
        population(i).fitness = setFitness(population(i).distance);
    end
end
[val1,idxPop1] = min([population.distance]);
population2 = population;
[valInitial,idxInitial] = min([population2.distance]);
disp(valInitial);