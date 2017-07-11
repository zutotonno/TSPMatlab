function [ d ] = distanceTo( p1,p2 )
%distanceTo 
% euclidean distance between two points
    xD = abs(p1(1) - p2(1));
    yD = abs(p1(2) - p2(2));
    d = round(sqrt((xD^2) + (yD^2)));
end


