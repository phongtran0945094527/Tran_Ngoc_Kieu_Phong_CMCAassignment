wavelength=[0.7800, 0.6949, 0.6559, 0.5843, 0.5206, 0.4914, 0.4378];

x=1./wavelength;
y=[440.0, 493.9, 523.2, 587.3, 659.3, 698.5, 784.0];

plot(x,y,':xr');
title('frequency against 1/wavelength');
xlabel('1/wavelength');
ylabel('Frequency');
grid on 

legend('note','location','northeast');