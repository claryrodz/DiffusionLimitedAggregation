function [x,y] = circlejump(x,y,rmax,rkill)

phi = 2*pi*rand;
r = sqrt(x^2+y^2);
rS = rmax + 3;

x = (r-rS)*sin(phi);
y = (r-rS)*cos(phi);
x = round(x);
y = round(y);

end
