function yp = fun(x,y)
yp = zeros(1,2);
yp(1) = y(1)*0.21827*(1-y(1)/13-y(2)/3.71429);
yp(2) = y(2)*0.06069*(1-y(2)/5.8+y(1)/13.2118);
end