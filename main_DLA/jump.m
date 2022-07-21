function [x,y] = jump(x,y,domain,lmax,Pdrift)

RandDrift = rand;

if RandDrift > Pdrift

    casenum = randi([1 4]);

    
    if casenum == 1
        if domain(x+1+lmax/2,y+lmax/2) == 0
            x = x + 1;
        end
    end

    if casenum == 2
        if domain(x-1+lmax/2,y+lmax/2) == 0
            x = x - 1;
        end
    end
    
    if casenum == 3
        if domain(x+lmax/2,y+1+lmax/2) == 0
            y = y + 1;
        end
    end
    
    if casenum == 4
        if domain(x+lmax/2,y-1+lmax/2) == 0
            y = y - 1;
        end
    end

end

if RandDrift <= Pdrift
    if domain(x+lmax/2,y-1+lmax/2) == 0
            y = y + 1;
    end
end

end

