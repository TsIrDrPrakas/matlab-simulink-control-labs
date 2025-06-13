%% Step1: 
% Transfer Function
num = 1;
den = [1 10 20];
plant = tf(num, den);    % G(s) = 1 / (s^2 + 10s + 20)

%% Step 2: Initial PID Design using `pidtune()`
% Design a PID controller using MATLAB's pidtune
[C, info] = pidtune(plant, 'PID');  % 'P', 'PI', or 'PID'

%% Step 3: Simulate Step Response (Before PID)
figure;
step(plant);
title('Open-loop Step Response');

%% Step 4: Closed-loop Simulation (After PID)
% Step 4: Closed-loop Simulation (After PID)
T = feedback(C * plant, 1);
figure;
step(T);
title('Closed-loop Step Response with PID');

%% Step 5: Manual Tuning (If Needed)
Kp = 300;
Ki = 70;
Kd = 10;
C_manual = pid(Kp, Ki, Kd);
T_manual = feedback(C_manual * plant, 1);
figure;
step(T_manual);
title('Manual PID Tuned Step Response');

%% Step 6: Compare Before and After Responses
figure;
step(plant, T);
legend('Open-loop', 'PID Controlled');
title('Comparison of Step Responses');