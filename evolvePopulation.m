max1 = 10000;
rFidx1 = 1;
cursor = 1;
rFCursor = zeros(1,tournamentSize);
max1Cursor = zeros(1,tournamentSize);
population = population2;
[val1,idxPop1] = min([population.distance]);
population2(1) = population(idxPop1);
% we choose to select the best route of population as elite son and set it
% to first position,others will fight to be father and mother of next
% route, populationSize times.
for cursor =2:populationSize
    for k = 1:tournamentSize % here the fight in tournament size rounds
        rF = round(rand(1)*19)+1;
        max1 = min(population(rF).distance,max1);
        rFCursor(k)=rF;
        max1Cursor(k)=population(rF).distance;
        if(max1 == population(rF).distance)
            rFidx1=rF;
        end
    end
    tourFather = population(rFidx1);
    max2 = 10000;
    rMidx2 = 1;
    rMCursor = zeros(1,tournamentSize);
    max2Cursor = zeros(1,tournamentSize);
    for k = 1:tournamentSize
        rM = round(rand(1)*19)+1;
        max2 = min(population(rM).distance,max2);
        rMCursor(k)=rM;
        max2Cursor(k)=population(rM).distance;
        if(max2 == population(rM).distance)
            rMidx2=rM;
        end
    end
    tourMother = population(rMidx2);
    crossOver;
    child.distance = setDistance(child.tour);
    population2(cursor) = child;
end
mutation; % here we introduce a mutation to avoid local optimum