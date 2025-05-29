% Sample MATLAB code for Lab 1
num = [1];
den = [1 3 2];
G = tf(num, den);
step(G);
stepinfo(G)