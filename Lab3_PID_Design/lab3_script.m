% Sample MATLAB code for PID Design
s = tf('s');
G = 1/(s^2 + 10*s + 20);
C = pidtune(G, 'PID');
T = feedback(C*G,1);
step(T);