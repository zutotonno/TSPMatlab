% here the single point crossOver. 
% randomly choose two position and we create a son with the points between
% start and end equals to the father point and the others equals to the
% mother points
startPos = round(randi([1 N],1,1));
endPos = round(randi([1 N],1,1));
startPos = min(startPos,endPos);
endPos = max(startPos,endPos);
missingPos = zeros(1,N);
child=tourMother;
for c = startPos:endPos
    if(startPos<endPos && c >= startPos && c <= endPos)
        if(contains(child.tour(c).loc,child.tour)==0) % if city from son's tour is not included in mother's tour
            child.tour(c) = tourFather.tour(c);
            missingPos(c)=c;
        end
    end
end  