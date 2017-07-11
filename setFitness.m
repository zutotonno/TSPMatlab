function [ fitness ] = setFitness( distance )
%SETFITNESS defines the fitness function
%   here simple return distance that we want to minimize, so this became a 
%   minimization problem. 1/distance if you want to maximize function
fitness = distance;
end


