function [t_out , y_out] =  Run_Eulers_Method(f,t_0,y_0,h,n)
t_out = zeros(1,n);
y_out = zeros(1,n);
t = t_0;
y = y_0;
for i = 1:n
   t_out(i) = t;
   y_out(i) = y;
   y = y + f(t,y)*h;
   t = t + h;
end
end