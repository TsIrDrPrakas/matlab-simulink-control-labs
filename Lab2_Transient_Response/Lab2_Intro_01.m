%% 1. Defining a Second-Order System in MATLAB:
% Example for an underdamped system (ζ=0.5, ωn=10):

zeta = 0.5;
omega_n = 10;
num = omega_n^2;
den = [1, 2*zeta*omega_n, omega_n^2];
sys = tf(num, den);

%% 2. Simulating Step Response:
% You can use the step function in MATLAB 
% to simulate the step response of a defined system.

step(sys);
title('Step Response of an Underdamped System');
xlabel('Time (seconds)');
ylabel('Output');
grid on;

