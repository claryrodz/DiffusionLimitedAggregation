function situation = check(x,y,domain,rkill)

rd = rkill - 5;
lmax = 2*rkill + 10;

r = sqrt(x^2+y^2);

if r > rkill
    situation = 1;


elseif r >= rd
    situation = 2;


elseif domain(x+1+lmax/2,y+lmax/2)+domain(x-1+lmax/2,y+lmax/2)+domain(x+lmax/2,y+1+lmax/2)+domain(x+lmax/2,y-1+lmax/2) > 0
   situation = 3;

else
    situation = 4;

end