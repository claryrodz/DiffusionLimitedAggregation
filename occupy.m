function [x,y] = occupy(rs)

phi = 2*pi*rand;
x = rs*sin(phi);
y = rs*cos(phi);
x = round(x);
y = round(y);

end