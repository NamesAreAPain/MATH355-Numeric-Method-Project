function [t_out , y_out] =  Run_Runge_Kutta_4_Method(f,t_0,y_0,h,n)
t_out = zeros(1,n);
y_out = zeros(1,n);
t = t_0;
y = y_0;
for i = 1:n
   t_out(i) = t;
   y_out(i) = y;
   k1 = f(t,y);
   k2 = f(t+h/2,y+h*k1/2);
   k3 = f(t+h/2,y+h*k2/2);
   k4 = f(t+h,y+h*k3);
   y = y + h*(k1/6 + k2/3 + k3/3 + k4/6);
   t = t + h;
end
end