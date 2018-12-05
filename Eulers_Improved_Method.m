function [t_next , y_next] =  Eulers_Improved_Method(f,t,y,h)
   k1 = f(t,y); %Eulers
   k2 = f(t+h,y+h*k1); %Predictor
   y_next = y + h*(k1/2 + k2/2);
   t_next = t + h;
end