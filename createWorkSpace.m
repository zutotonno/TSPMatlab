N = 20;
populationSize = 50;

%City Location matrix
tourManager = repmat(struct('loc',[0,0]),1,N);

% for i= 1:N
%     tourManager(i).loc = generateCity();
% end
% random generation of city

tourManager(1).loc = [60 200];
tourManager(2).loc = [180 200];
tourManager(3).loc = [80 180];
tourManager(4).loc = [140 180];
tourManager(5).loc = [20 160];
tourManager(6).loc = [100 160];
tourManager(7).loc = [200 160];
tourManager(8).loc = [140 140];
tourManager(9).loc = [40 120];
tourManager(10).loc = [100 120];

tourManager(11).loc = [180 100];
tourManager(12).loc = [60 80];
tourManager(13).loc = [120 80];
tourManager(14).loc = [180 60];
tourManager(15).loc = [20 40];
tourManager(16).loc = [100 40];
tourManager(17).loc = [200 40];
tourManager(18).loc = [20 20];
tourManager(19).loc = [60 20];
tourManager(20).loc = [160 20];

generateIndividuals;
tourManagerDistance = setDistance(tourManager);