function [x,y] = circlejump2(x,y,rmax)

phi = 2*pi*rand;
r = sqrt(x^2+y^2);
rs = rmax - 1;

x = (rs-r)*sin(phi);
y = (rs-r)*cos(phi);
x = round(x);
y = round(y);

end
