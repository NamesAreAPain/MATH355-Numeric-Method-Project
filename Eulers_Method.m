function [t_next , y_next] =  Eulers_Method(f,t,y,h)
   y_next = y + f(t,y)*h;
   t_next = t + h;
end
