function [t_out , y_out] =  Run_Numerical_Method(method,f,t_0,y_0,h,stop)
t_out = [];
y_out = [];
t = t_0;
y = y_0;
while t < stop
   t_out = [t_out t];
   y_out = [y_out y];
   [ t, y ] = method(f,t,y,h);
end
end