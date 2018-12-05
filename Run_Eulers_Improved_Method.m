function [t_out , y_out] =  Run_Eulers_Improved_Method(f,t_0,y_0,h,n)
t_out = zeros(1,n);
y_out = zeros(1,n);
t = t_0;
y = y_0;
for i = 1:n
   t_out(i) = t;
   y_out(i) = y;
   k1 = f(t,y);
   k2 = f(t+h,y+h*k1);
   y = y + h*(k1/2 + k2/2);
   t = t + h;
end
end