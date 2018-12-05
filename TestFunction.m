close all
clear all
f = @(t,y) -2*y - 4*t
h = 1
stop = 10
t_0 = 0
y_0 = 0

global h_glob
global eps_glob
h_glob = 0.1
eps_glob = 0.001

for method = {@Eulers_Method @Eulers_Improved_Method @Runge_Kutta_4_Method @Adaptive_Eulers_Method}
    [ a , b] = Run_Numerical_Method(method{1},f,t_0,y_0,h,stop);
    plot(a,b)
    hold on
end
legend('Euler','Improved','RK4','Adapt');
title('Numerical Methods')


%{
A collaborative effort by James Crocker and Joe Gorman.

James Crocker wrote the non-adaptive methods and the shell execution code. 
Joe Gorman wrote the adaptive method and the neccessary adjustments to the
TestFunction file neccessary to accomodate MATLAB's lack of method-state.

%}




