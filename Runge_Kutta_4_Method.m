function [t_next , y_next] =  Runge_Kutta_4_Method(f,t,y,h)
   k1 = f(t,y); %Eulers
   k2 = f(t+h/2,y+h*k1/2); % Intermediate Values
   k3 = f(t+h/2,y+h*k2/2);
   k4 = f(t+h,y+h*k3); %Predictor
   y_next = y + h*(k1/6 + k2/3 + k3/3 + k4/6);
   t_next = t + h;
end