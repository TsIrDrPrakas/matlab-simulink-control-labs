% Sample MATLAB code for Lab 2
zeta = 0.5; wn = 4;
num = [wn^2];
den = [1 2*zeta*wn wn^2];
G = tf(num, den);
step(G);