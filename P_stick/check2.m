function situation = check2(x,y,domain,rmax,Pstick)

rkill = 100;
rd = rmax*0.8;
lmax = 2*rkill + 10;
Pnum = rand;

r = sqrt(x^2+y^2);

if r > rkill
    situation = 1;


elseif r <= rd
    situation = 2;


elseif domain(x+1+lmax/2,y+lmax/2)+domain(x-1+lmax/2,y+lmax/2)+domain(x+lmax/2,y+1+lmax/2)+domain(x+lmax/2,y-1+lmax/2) > 0
   
    if Pnum <= Pstick
        situation = 3;
    elseif Pnum > Pstick
        situation = 4;
    end

else
    situation = 4;

end