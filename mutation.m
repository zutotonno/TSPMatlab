% we simply swap two random city for each set of routes
% that's a single point mutation
mutationCounter=0;
for mCursor = 2:populationSize
    for tCursor = 1:N
        randNum = round(rand(1)*1000);
        if(randNum>mutationRate)
            randCity = round(rand(1)*19)+1;
            cityAux = population2(mCursor).tour(randCity);
            population2(mCursor).tour(randCity) = population2(mCursor).tour(tCursor);
            population2(mCursor).tour(tCursor) = cityAux;
            mutationCounter=mutationCounter+1;
        end
    end
end