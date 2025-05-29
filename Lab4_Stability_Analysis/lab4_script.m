% Sample MATLAB code for Bode/Nyquist
G = tf([1], [1 2 2]);
bode(G);
margin(G);
nyquist(G);