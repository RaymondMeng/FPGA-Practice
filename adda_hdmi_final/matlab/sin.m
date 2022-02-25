X = linspace(0, 4*pi, 1024);
Y = (255 / 2) * (sin(X) + 1);
Y = uint16(Y);
plot(X, Y);
fid0 = fopen('C:\Xilinx\vivado_project\adda_hdmi_final\matlab\sin1920_1080.txt', 'wt');
fprintf(fid0, '%02x,\n', Y);
fid0 = fclose(fid0);