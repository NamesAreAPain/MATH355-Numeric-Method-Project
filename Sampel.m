clear all
close all

func_1  = @(t,y) 1 - 2 * y
Func_1 = @(t) 0.5*exp(-2*t) + 0.5


% define initial conditions x0, y0, and step size
x0 = 0; % Initial time
y0 = 1; % Initial value y(a)
h = 0.001; % (Time) step size
% define final time ,and calculus the number of steps of calculation
T = 10; % Final time
N = floor((T-x0)/h); % Number of time steps
% preallocation to save solutions
t = x0*ones(N,1);
y = y0*ones(N,1);
% Implement Euler's Methods
for n = 1:N % For loop, sets next t,y values
    t(n+1)=t(n)+h;
    y(n+1)=y(n)+h*func_1(t(n),y(n)); % Calls the function func_1(t,y)=dy/dt
end
% Plot the numerical solution along with the actual solution
figure(1)
plot(t,y, t, Func_1(t)) %Func_1(t) is the solution for the initial value problem 
title(['Euler Method using N=',num2str(N),'steps, by MYNAME']) % Include your own name
legend('numerical solution','true solution')
xlabel([num2str(x0) ' < time < ' num2str(T)]) 
ylabel('function values') 
figure(2) % plot the error
plot(t,y-Func_1(t))
title('Error plot, by MYNAME') % Include your own name
xlabel([num2str(x0) ' < time < ' num2str(T)]) 
ylabel('Error')