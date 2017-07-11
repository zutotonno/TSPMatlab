function [ distance ] = setDistance( tour )
%SETDISTANCE Euclidean distance
%   we increment distance for each route, then connect the last city with
%   the first
tourDistance =0;
prec = tour(1).loc;
for j = 2:20
   tourDistance  = tourDistance + distanceTo(prec,tour(j).loc);
   prec = tour(j).loc;
end
distance = tourDistance + distanceTo(prec,tour(1).loc);
end


