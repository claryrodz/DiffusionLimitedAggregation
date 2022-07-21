function [domain,rmax,rs,stop,Np] = aggregate(x,y,domain,rmax,Np,Ntot,rkill)

stop = 0;
lmax = 2*rkill + 10;
sz = 10;
rr = round(sqrt(x^2+y^2));

domain(x+lmax/2,y+lmax/2) = 1;
Np = Np + 1;
rmax = max(rmax,rr);
rs = rmax + 3;

if rmax > lmax/2
    stop = 1;
end

%plot circle
figure(1)
if Np < Ntot/3
    scatter(x+lmax/2,y+lmax/2,sz,'b','filled')
    hold on
elseif Np >= Ntot/3 && Np <= Ntot*2/3
    scatter(x+lmax/2,y+lmax/2,sz,'g','filled')
    hold on
else
    scatter(x+lmax/2,y+lmax/2,sz,'c','filled')
    hold on
end
xlim([150 450])
ylim([150 450])

end