function [Dfplot,Dfbox] = maincode(Nparticles,Pdrift)

% Main code
clear all
Ntot = Nparticles;
rkill = 300; % Radius limit
rd = rkill - 5;
lmax = 2*rkill + 10;
Pdrift = Pdrift; % Degree of drift, 0-1
domain = zeros(lmax);

%Initiate
domain(lmax/2,lmax/2) = 1;
rmax = 1;
rs = rmax + 3;
[x,y] = occupy(rs);

stop = 0;
iter = 1;
Np = 1;
INDEX = 1;
rrmax(1) = 1;
mass(1) = 1;

while (stop == 0 && Np < Ntot)
    situation = check(x,y,domain,rkill);
    
    if situation == 1
        [x,y] = occupy(rs);
        [x,y] = jump(x,y,domain,lmax,Pdrift);
    end
    
    if situation == 3
        [domain,rmax,rs,stop,Np] = aggregate(x,y,domain,rmax,Np,Ntot,rkill);
        INDEX = INDEX + 1;
        rrmax(INDEX) = rmax;
        mass(INDEX) = Np;
        [x,y] = occupy(rs);
        [x,y] = jump(x,y,domain,lmax,Pdrift);      
    end     
    
    if situation == 4
        [x,y] = jump(x,y,domain,lmax,Pdrift);
    end
    
    if situation == 2
        [x,y] = circlejump(x,y,rmax);
    end
    iter = iter+1;
end

Dfbox = log(Np)/log(rmax);
P = polyfit(log(rrmax),log(mass),1);
Dfplot = P(1);
figure(2)
plot(log(rrmax),log(mass))
rrmax=rrmax(:);
mass=mass(:);

end
