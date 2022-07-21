function Df = stickingcode(Ntot,Pstick)
%Creative setup

% Ntot = 3500;
rkill = 100;
rd = rkill - 1;
lmax = 2*rkill + 10;
rmax = rkill;
% Pstick = 1;
sz = 12;

domain = zeros(lmax);

%Initiate
phi = linspace(0,2*pi,200);
for i = 1:200
    M(i) = lmax/2+rkill*sin(phi(i));
    N(i) = lmax/2+rkill*cos(phi(i));
    domain(round(M(i)),round(N(i))) = 1;
    hold on
end
plot(M,N,'r')

rs = rmax - 5;
[x,y] = occupy2(rs);

stop = 0;
iter = 1;
Np = 1;


while (stop == 0 && Np < Ntot)
    situation = check2(x,y,domain,rmax,Pstick);
    
    if situation == 1
        [x,y] = occupy2(rs);
        [x,y] = jump2(x,y,domain,lmax);
    end
    
    if situation == 3
        [domain,rmax,rs,stop,Np] = aggregate2(x,y,domain,rmax,Np,Ntot);
        [x,y] = occupy2(rs);
        [x,y] = jump2(x,y,domain,lmax);
%         imshow(imresize(domain,1));
%         pause(.001);
    end
    
    if situation == 4
        [x,y] = jump2(x,y,domain,lmax);
    end
    
    if situation == 2
        [x,y] = circlejump2(x,y,rmax);
    end
    iter = iter+1;
end

Af = pi*rkill^2 - pi*rmax^2;
Rtrans = sqrt(Af/pi);
Df = log(Np)/log(Rtrans);
end
