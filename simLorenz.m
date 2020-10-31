%%
%Coded by Santa
%all rights reserved © 2020
%GitHub.com

clear all, close all, clc
Beta = [10; 28; 8/3]; %valores caoticos
x0 = [0; 1; 20]; %valores iniciales
dt = 0.001;
tspan = dt:dt:50;

options = odeset('RelTol',1e-12,'AbsTol',1e-12*ones(1,3));

[t,x] = ode45(@(t,x)lorenz(t,x,Beta),tspan,x0);

%%subplot(1,2,1);

title('Lorenz Caos','Color', 'w');
plot3(x(:,1),x(:,2),x(:,3),'g','LineWidth',1.5);
set(gca,'color','k','xcolor','w','ycolor','w','zcolor','w');
set(gcf,'color','k');
xlabel('Eje X');
ylabel('Eje Y');
zlabel('Eje Z');

%%
%For a 3D experience erase the following "%" also delete the superior "%%" from subplot(1,2,1); 
% subplot(1,2,2);
% stem3(x(:,1),x(:,2),x(:,3));
% title('Lorenz Caos con arrastre cascada','Color', 'w');
% xlabel('Eje X'); grid on
% ylabel('Eje Y');
% zlabel('Eje Z');
% set(gca,'color','k','xcolor','w','ycolor','w','zcolor','w');
% set(gcf,'color','k');
% colorbar
