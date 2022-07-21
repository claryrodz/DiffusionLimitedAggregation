function [domain,rmax,rs,stop,Np] = aggregate2(x,y,domain,rmax,Np,Ntot)

stop = 0;
rkill = 100;
lmax = 2*rkill + 10;

    domain(x+lmax/2,y+lmax/2) = 1;
    rmax = min(rmax,sqrt(x^2+y^2));
    rmax = round(rmax);
    rs = rmax - 5;
    
    if rmax > lmax/2
        stop = 1;
    end
    
    Np = Np + 1;
    
    %plot circle
    figure(1)
    sz = 10;
    if Np < Ntot/3
        scatter(x+lmax/2,y+lmax/2,sz,'r','filled')
        hold on
    elseif Np >= Ntot/3 && Np <= Ntot*2/3
        scatter(x+lmax/2,y+lmax/2,sz,'g','filled')
        hold on
    else
        scatter(x+lmax/2,y+lmax/2,sz,'y','filled')
        hold on
    end

end