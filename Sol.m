close all
clear all

n = 100
h = 0.1
            
t_out = zeros(1,n);
y_out = zeros(1,n);



t = 0;
y = 1;
u = -1;
%f = @(u,y,t) 2*u - 2*y
f = @(u,y,t) 3*y - 2*u
 
for i = 1:n
   t_out(i) = t;
   y_out(i) = y;
   y_old = y;
   y = y + h*u ;
   u = u + h*f(u,y_old,t);
   t = t + h;
end

plot(t_out,y_out)
hold on
f_analytic = @(t1) (exp(-3*t1) + exp(t1))/2
plot(t_out,f_analytic(t_out),'r*')