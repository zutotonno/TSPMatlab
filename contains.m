function [ ris ] = contains( c, t)
%CONTAINS given a point here we returns 1 if this route yet exist in son's
% tour and 0 if we can add the father route
        ris=0;
        for a=1:20
            if(c(1)==t(a).loc(1))
                if(c(2)==t(a).loc(2))
                    ris=1;
                    break;
                end
            end
        end
end

