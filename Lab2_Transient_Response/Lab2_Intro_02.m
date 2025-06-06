%% 3. Observing the Effect of Damping Ratio (ζ):
% As mentioned in the document, varying ζ (while keeping ωn fixed) 
% will change the characteristics of the step response.

omega_n = 10; % Fixed natural frequency
zeta_values = [0.05, 0.1, 0.2, 0.3, 0.4, 0.5, 0.7, 1, 1.5, 2]; % Various damping ratios

figure;
hold on;
for i = 1:length(zeta_values)
    zeta = zeta_values(i);
    num = omega_n^2;
    den = [1, 2*zeta*omega_n, omega_n^2];
    sys = tf(num, den);
    [y, t] = step(sys, 0:0.01:12/omega_n); % Adjust time scale for better visualization
    plot(t*omega_n, y, 'DisplayName', ['\zeta = ', num2str(zeta)]); % Plotting vs omega_n*t
end
title('Response of second-order system to step input for various \zeta');
xlabel('\omega_n t');
ylabel('c(t)');
legend('Location', 'southeast');
grid on;
hold off;
